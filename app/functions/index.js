const functions = require("firebase-functions");
const { google } = require("googleapis");
const sheets = google.sheets("v4");
const fetch = require('node-fetch');

const spreadsheetId = functions.config().googlespreadsheet.spreadsheetid;

const jwtClient = new google.auth.JWT({
  email: functions.config().googlespreadsheet.email,
  key: functions.config().googlespreadsheet.key,
  scopes: ["https://www.googleapis.com/auth/spreadsheets"],
});

const writeToSpreadsheet = async (data) => {
  await jwtClient.authorize();

  await sheets.spreadsheets.values.append({
    auth: jwtClient,
    spreadsheetId,
    range: 'Requests!A2:P',
    valueInputOption: 'RAW',
    requestBody: { values: [
        [
          data.firstName,
          data.lastName,
          data.address,
          data.city,
          data.state,
          data.zip,
          data.email,
          data.phone,
          data.bedroomType,
          data.howHear,
          data.isBroker,
          data.brokerageFirm,
          data.clientName,
          data.notes,
          new Date()
        ]
      ]},
  })
}

const sendEmail = async (data) => {
  const emailData = {
    From: 'no-reply@the-bellemont.com',
    To: 'ram@hungryram.com',
    Subject: 'Bellemont - You have received an inquiry',
    TextBody: `New inquiry from Bellemont.

Registrant Details:
First name: ${data.firstName}
Last name: ${data.lastName}
Address: ${data.address}
City: ${data.city}
State: ${data.state}
Zip: ${data.zip}
Email: ${data.email}
Telephone: ${data.phone}
Bedroom type: ${data.bedroomType}
How did you hear about us?: ${data.howHear}
Are you a broker?: ${data.isBroker}
Brokerage firm: ${data.brokerageFirm}
Client Name: ${data.clientName}
Notes: ${data.notes}`,
    MessageStream: 'outbound'
  };

  return fetch("https://api.postmarkapp.com/email", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      "X-Postmark-Server-Token": process.env.POSTMARK_SERVER_TOKEN
    },
    body: JSON.stringify(emailData),
  })
}

exports.contactForm = functions.https.onRequest(async (req, res) => {
  console.log(req.body);
  if (req.method !== 'POST') {
    return res.json({ success: false });
  }

  try {
    await writeToSpreadsheet(req.body);
    await sendEmail(req.body);
    res.json({ success: true });
  } catch (error) {
    console.error(error);
    res.json({ success: false });
  }
})

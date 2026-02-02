const fetch = require('node-fetch');

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

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).json({ success: false });
  }

  try {
    await sendEmail(req.body);
    res.status(200).json({ success: true });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: error.message });
  }
}

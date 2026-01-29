-- Update Firebase Storage URLs to R2 in upload_file table
-- Run this AFTER verifying your R2 public URL

-- First, let's see what URLs exist
SELECT url, COUNT(*) as count 
FROM upload_file 
WHERE url LIKE '%googleapis.com%' OR url LIKE '%firebase%'
GROUP BY url
LIMIT 10;

-- When ready to update, uncomment and modify these:
-- UPDATE upload_file 
-- SET url = REPLACE(url, 'https://storage.googleapis.com/YOUR-OLD-BUCKET', 'https://881c06dbdbb663173276483a85897b20.r2.cloudflarestorage.com/the-bellemont')
-- WHERE url LIKE '%googleapis.com%';

-- You may also need to update other fields like thumbnail, formats, etc.
-- UPDATE upload_file 
-- SET formats = REPLACE(formats::text, 'https://storage.googleapis.com/YOUR-OLD-BUCKET', 'https://881c06dbdbb663173276483a85897b20.r2.cloudflarestorage.com/the-bellemont')::jsonb
-- WHERE formats::text LIKE '%googleapis.com%';

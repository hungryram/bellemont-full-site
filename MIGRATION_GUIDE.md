# Railway Deployment Guide

## Step 1: Import SQL Database

1. Create a new Postgres database in Railway
2. Get your database credentials from Railway dashboard
3. Import your Cloud SQL export:
   ```bash
   psql postgresql://postgres:PASSWORD@HOST:PORT/railway < backup.sql
   ```

## Step 2: Set Environment Variables in Railway

Add these in your Railway project settings:

```
NODE_ENV=production
HOST=0.0.0.0
PORT=1337

DATABASE_HOST=<from-railway-postgres>
DATABASE_PORT=5432
DATABASE_NAME=railway
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=<from-railway-postgres>
DATABASE_SSL=true

R2_ACCESS_KEY_ID=<your-r2-key>
R2_SECRET_ACCESS_KEY=<your-r2-secret>
R2_ENDPOINT=https://<account-id>.r2.cloudflarestorage.com
R2_BUCKET_NAME=bellemont-storage

GITHUB_TOKEN=<your-token>
ADMIN_JWT_SECRET=<generate-new-secret>
JWT_SECRET=<generate-new-secret>
```

## Step 3: Deploy to Railway

1. Connect your GitHub repo to Railway
2. Set root directory to `/api`
3. Railway will automatically detect Strapi and deploy

## Step 4: Update Frontend (Gatsby/Vercel)

Update these environment variables in Vercel:

```
GATSBY_STRAPI_API_URL=https://your-railway-app.railway.app
```

## Step 5: Update Database URLs (IMPORTANT!)

You'll need to update all Firebase Storage URLs in your database to point to R2:

```sql
-- Example: Update upload_file table
UPDATE upload_file 
SET url = REPLACE(url, 'https://storage.googleapis.com/YOUR-BUCKET', 'https://your-r2-public-url.com');

-- Update other tables with file references as needed
```

## Step 6: Test

1. Access your Railway Strapi admin: `https://your-app.railway.app/admin`
2. Try uploading a new file
3. Verify it appears in R2
4. Check frontend can access files

## Notes

- Railway automatically provides SSL
- R2 public URL can be configured via custom domain in Cloudflare
- Keep the old Firebase storage for 30 days as backup before deleting

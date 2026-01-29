const getCommonPlugins = () => ({})

const getDevPlugins = () => ({
  upload: {
    responsiveDimensions: false,
    sizeOptimization: false
  }
})

const getProductionPlugins = env => ({
  upload: {
    provider: 'aws-s3',
    providerOptions: {
      accessKeyId: env('R2_ACCESS_KEY_ID'),
      secretAccessKey: env('R2_SECRET_ACCESS_KEY'),
      endpoint: env('R2_ENDPOINT'), // e.g., https://<account-id>.r2.cloudflarestorage.com
      params: {
        Bucket: env('R2_BUCKET_NAME'),
      },
      s3ForcePathStyle: true, // Required for R2
      signatureVersion: 'v4',
    },
    actionOptions: {
      upload: {},
      uploadStream: {},
      delete: {},
    },
    responsiveDimensions: false,
    sizeOptimization: false
  }
})

module.exports = ({ env }) => ({
  ...getCommonPlugins(env),
  ...(env('NODE_ENV') === 'development' ? getDevPlugins(env) : getProductionPlugins(env)),
  'github-publish': {
    owner: "DboxDev", // The gothub organisation or user
    repo: "bellemont-full-site", // The name of the repository
    workflow_id: "firebase-hosting.yml", // The workflow_id or filename
    token: env("GITHUB_TOKEN"), // The GitHub personal access token with access to trigger workflows and view build status
    branch: "master", // The branch the workflow should be triggered on
    inputs: {
      // Optional inputs to pass through to the GitHub workflow
    }
  }
})

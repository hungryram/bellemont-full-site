const getCommonPlugins = () => ({})

const getDevPlugins = () => ({
  upload: {
    responsiveDimensions: false,
    sizeOptimization: false
  }
})

const getProductionPlugins = env => ({
  upload: {
    provider: 'google-cloud-storage',
    providerOptions: {
      bucketName: env('UPLOADS_GCLOUD_BUCKET'),
      publicFiles: false,
      uniform: true,
      basePath: '',
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

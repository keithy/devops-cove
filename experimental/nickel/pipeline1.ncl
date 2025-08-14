# Pipeline 1: Frontend build resources
let resources = {
  images = {
    node_base = "node:18-alpine",
    nginx_runtime = "nginx:alpine",
  },
  
  artifacts = {
    frontend_dist = {
      type = "s3",
      bucket = "artifacts-prod",
      prefix = "frontend/dist",
    },
  },
  
  secrets = {
    npm_token = {
      provider = "vault",
      path = "/secrets/ci/npm", 
    },
  },
  
  external_apis = {
    contentful = {
      endpoint = "https://api.contentful.com",
      timeout_ms = 5000,
    },
  },
} in
resources
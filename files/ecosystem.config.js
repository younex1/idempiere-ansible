module.exports = {
  apps : [{
    name: 'media-strapi-prod',
    script: 'npm',
    args: 'start',
    cwd: '/opt/mediaserver',
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'production'
    }
  }]
};

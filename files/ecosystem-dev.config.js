module.exports = {
  apps : [{
    name: 'media-strapi-dev',
    script: 'npm',
    args: 'run develop',
    cwd: '/opt/mediaserver',
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    }
  }]
};

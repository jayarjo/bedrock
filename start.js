/*
 * Copyright (c) 2012-2015 Digital Bazaar, Inc. All rights reserved.
 */
var bedrock = require('./lib/bedrock');
var path = require('path');

require('../bedrock-express');
require('../bedrock-docs');
require('../bedrock-identity');
require('../bedrock-idp');
require('../bedrock-i18n');
require('../bedrock-jobs');
require('../bedrock-server');
require('../bedrock-mail');
require('../bedrock-mongodb');
require('../bedrock-passport');
require('../bedrock-permission');
require('../bedrock-request-limiter');
require('../bedrock-requirejs');
require('../bedrock-rest');
require('../bedrock-session-mongodb');
require('../bedrock-validation');
require('../bedrock-views');
require('../bedrock-protractor');

// load local config
require('./configs/dev');

// add static paths for website
bedrock.config.express.static.push(path.join(__dirname, 'site', 'static'));
// use CORS for static vocabs and contexts
bedrock.config.express.static.push({
  route: '/vocabs',
  path: path.join(__dirname, 'site', 'static', 'vocabs'),
  cors: true
});
bedrock.config.express.static.push({
  route: '/contexts',
  path: path.join(__dirname, 'site', 'static', 'contexts'),
  cors: true
});

// TODO: add via bedrock-idp
bedrock.config.views.paths.push(
  path.join(__dirname, '..', 'bedrock-idp', 'views')
);

// add dev data
bedrock.events.on('bedrock.configure', function() {
  require('./configs/roles');
  require('./configs/common-data');
  require('./configs/dev-data');
});

// configure for tests, add test data
bedrock.events.on('bedrock.test.configure', function() {
  require('./configs/test');
  require('./configs/roles');
  require('./configs/common-data');
  require('./configs/dev-data');
});

bedrock.start();
const cucumber = require('cypress-cucumber-preprocessor').default
const allureWriter = require('@shelex/cypress-allure-plugin/writer')
const ms = require('smtp-tester')

module.exports = (on, config) => {
	on('file:preprocessor', cucumber())
	allureWriter(on, config)
	return config
}

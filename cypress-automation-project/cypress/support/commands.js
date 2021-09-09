// cypress/support/commands.js
const { MailSlurp } = require('mailslurp-client')

const apiKey =
	'26a6b752a1eb9da9520ade3027f01023d7f806925454b28ffc85560bc1456b4b'
const mailslurp = new MailSlurp({ apiKey })

Cypress.Commands.add('createInbox', () => {
	return mailslurp.createInbox()
})

Cypress.Commands.add('waitForLatestEmail', inboxId => {
	return mailslurp.waitForLatestEmail(inboxId)
})

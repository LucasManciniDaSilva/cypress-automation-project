// cypress/support/commands.js
const { MailSlurp } = require('mailslurp-client')

const apiKey =
	'502336d237179c2ef36d824232678736d7a65ba367a478159537616c75274fc5'
const mailslurp = new MailSlurp({ apiKey })

Cypress.Commands.add('createInbox', () => {
	return mailslurp.createInbox()
})

Cypress.Commands.add('waitForLatestEmail', inboxId => {
	return mailslurp.waitForLatestEmail(inboxId)
})

import faker from 'faker-br'
import { commonData } from '../../common/common'

And('Informo o campo email em {string} dentro de {string}', (field, window) => {
	cy.createInbox().then(inbox => {
		// verify a new inbox was created
		assert.isDefined(inbox)

		// save the inboxId for later checking the emails
		commonData.inboxId = inbox.id
		commonData.emailAddress = inbox.emailAddress

		cy.get(window).within(() => {
			cy.get(field).type(commonData.emailAddress)
		})
	})
})

And(
	'Informo {string} no campo de {string} dentro de {string}',
	(content, field, window) => {
		cy.get(window).within(() => {
			cy.get(field).type(content)
		})
	}
)

And('Clico no botão de {string} o plano gratuito', button => {
	cy.get(
		'[style="opacity: 1;"] > .MuiCardActions-root > .MuiButtonBase-root > .MuiButton-label'
	).click()
})

And('Informo o campo CNPJ em {string} dentro de {string}', (field, window) => {
	const cnpj = faker.br.cnpj()

	cy.get(window).within(() => {
		cy.get(field).type(cnpj)
	})
})

Then(
	'Clico no botão de {string} e verifico se foi enviado o código de confirmacao',
	content => {
		cy.get('button').contains(content).click()
		cy.waitForLatestEmail(commonData.inboxId).then(email => {
			// verify we received an email
			let code = email.body.toString()
			cy.log(code)
			let code2 = code.match(/<span[^>]*>[\n\r\s]+(\d+)?[\n\r\s]+<\/span>/)[1]
			cy.log(code2)
			// // verify that email contains the code
			// assert.strictEqual(/verification code is/.test(email.body), true)

			// // extract the confirmation code (so we can confirm the user)
			// code = /([0-9]{6})$/.exec(email.body)[1]
		})
	}
)

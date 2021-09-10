import faker from 'faker-br'
import { commonData } from '../../common/common'

And('Informo o campo email em {string} dentro de {string}', (field, window) => {
	cy.createInbox().then(inbox => {
		assert.isDefined(inbox)

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
	'Clico no botão de {string} e verifico se foi enviado o código de confirmação',
	content => {
		cy.get('button').contains(content).click()
		cy.waitForLatestEmail(commonData.inboxId).then(email => {
			commonData.confirmationCode = email.body
				.toString()
				.match(/<span[^>]*>[\n\r\s]+(\d+)?[\n\r\s]+<\/span>/)[1]
		})
	}
)

And(
	'Informo o código de confirmação no campo {string} dentro de {string}',
	(field, window) => {
		cy.get(window).within(() => {
			cy.get(field).type(commonData.confirmationCode)
		})
	}
)

Then('Informo o email cadastrado no campo de {string}', field => {
	cy.get(field).type(commonData.emailAddress)
})

Then('Verifico se foi redirecionado para a url de dashboard', () => {
	cy.wait(3000)
	cy.location().should(loc => {
		expect(loc.href).to.include('https://atlantis.cintra.dev/dashboard')
	})
})

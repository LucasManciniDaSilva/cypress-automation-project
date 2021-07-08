import { _ } from 'lodash'
export let commonData = {}

export function logInformation(obj) {
	return cy.log(JSON.stringify(obj, null, 4))
}

export function attFileAllure(obj, type, information) {
	const generateNumber = Math.random().toString(10)

	cy.writeFile(
		`cypress/files/testes/${type}_${generateNumber}_${information}.txt`,
		obj
	)

	cy.allure().fileAttachment(
		`testes ${type} ${information} `,
		`cypress/files/testes/${type}_${generateNumber}_${information}.txt`,
		'text/plain'
	)
}

defineStep('Tenho acesso a url {string}', url => {
	cy.visit(url)
})

defineStep('Informo o email {string}', email => {
	cy.get('#email').type(email)
})

defineStep('Informo uma senha {string}', password => {
	cy.get('#password').type(password)
})

defineStep('Clico no botão de Acessar', () => {
	cy.get('button').contains('Acessar').click()
})

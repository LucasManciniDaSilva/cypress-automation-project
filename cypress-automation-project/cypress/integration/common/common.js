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

defineStep('Informo {string} no campo de {string}', (content, field) => {
	cy.get(field).type(content)
})

defineStep('Clico no botão de {string}', content => {
	cy.wait(2000)
	cy.get('button').contains(content).click()
})

defineStep(
	'Verifico se retornou um erro de {string} no campo {string}',
	(erro, field) => {
		cy.get(field).contains(erro)
	}
)

defineStep('Clico no campo de {string} em {string}', (field, window) => {
	cy.get(window).within(() => {
		cy.get(field).click()
	})
})

defineStep('Verifico se foi redirecionado para a url de {string}', path => {
	cy.wait(2000)
	cy.location().should(loc => {
		expect(loc.href).to.include('https://atlantis.cintra.dev/' + path)
	})
})

defineStep('Informo {string} no campo de {string}', (content, field) => {
	cy.get(field).type(content)
})

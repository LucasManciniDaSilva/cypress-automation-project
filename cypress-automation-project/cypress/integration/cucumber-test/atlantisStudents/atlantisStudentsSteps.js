import faker from 'faker-br'

Then('Acesso a listagem de recursos e clico em {string}', resource => {
	cy.get(`[aria-label="menu"]`).click()
	cy.get(
		'*[class^="MuiTypography-root MuiListItemText-primary MuiTypography-body1 MuiTypography-displayBlock"]'
	)
		.contains(resource)
		.click()
})

And('Clico no icone para realizar o cadastro de um novo Aluno', () => {
	cy.get(`[aria-label="add member"]`).click()
})

And(
	'Informo um CPF, Telefone e um Email nos campos de {string}, {string}, {string}',
	(document, email, phone) => {
		const studentDocument = faker.br.cpf()
		const studentEmail = faker.internet.email()
		const studentPhone = faker.phone.phoneNumber()

		cy.get(document).type(studentDocument)
		cy.get(email).type(studentEmail)
		cy.get(phone).type(studentPhone)

		cy.screenshot()
	}
)

And(
	'Clico no campo de {string} e seleciono o Sexo {string}',
	(field, value) => {
		cy.get(field).click()
		cy.get(`[aria-labelledby="genreSelectLabel"]`).contains(value).click()

		cy.screenshot()
	}
)

And(
	'Informo um Telefone e um Email nos campos de {string} e {string}',
	(email, phone) => {
		const studentEmail = faker.internet.email()
		const studentPhone = faker.phone.phoneNumber()

		cy.get(email).type(studentEmail)
		cy.get(phone).type(studentPhone)

		cy.screenshot()
	}
)

And('Informo um Cpf no campo de {string}', document => {
	const studentDocument = faker.br.cpf()

	cy.get(document).type(studentDocument)
})

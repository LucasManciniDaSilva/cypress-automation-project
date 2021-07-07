When('Informo o email {string}', email => {
	cy.get('#email').type(email)
})

And('Clico no botão de Acessar', () => {
	cy.get('button').contains('Acessar').click()
})

Then('Verifico se retornou um erro de {string}', erro => {
	cy.get('#password-helper-text').contains(erro)
})

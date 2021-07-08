///CT-001
Then(
	'Verifico se retornou um erro de {string} abaixo do campo de senha',
	erro => {
		cy.get('#password-helper-text').contains(erro)
	}
)

///END CT-001

///CT-002
Then(
	'Verifico se retornou um erro de {string} abaixo do campo de email',
	erro => {
		cy.get('#email-helper-text').contains(erro)
	}
)

///END CT-002

///CT-003
Then('Verifico se retornou um erro de {string} utilizando o toastify', erro => {
	cy.get('*[class^="Toastify__toast-body"]').contains(erro)
	// cy.get('div').should('have.class', 'Toastify__toast-body').contains(erro)
})

///END CT-003

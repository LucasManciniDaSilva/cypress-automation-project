Then(
	'Verifico se retornou um erro de {string} no campo {string}',
	(erro, field) => {
		cy.get(field).contains(erro)
	}
)

///CT-003
Then('Verifico se retornou um erro de {string} utilizando o toastify', erro => {
	cy.get('*[class^="Toastify__toast-body"]').contains(erro)
	// cy.get('div').should('have.class', 'Toastify__toast-body').contains(erro)
})

///END CT-003

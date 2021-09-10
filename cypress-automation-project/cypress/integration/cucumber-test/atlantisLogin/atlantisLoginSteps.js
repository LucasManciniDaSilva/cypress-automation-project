///CT-003
Then('Verifico se retornou um erro de {string} utilizando o toastify', erro => {
	cy.get('*[class^="Toastify__toast-body"]').contains(erro)
	// cy.get('div').should('have.class', 'Toastify__toast-body').contains(erro)
})

///END CT-003

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

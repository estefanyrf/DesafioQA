/// <reference types="cypress" />

describe('Automação', () => {

    it('Acessar link jsonplaceholder', () => {
        cy.visit('https://jsonplaceholder.typicode.com/')
        cy.get('title').invoke('text').then(title => {
            expect(title).to.be.equals('JSONPlaceholder - Free Fake REST API')
        });
    });

    it('Acessar menu Guide', () => {
        cy.get('body > header > nav > ul > li:nth-child(1) > a').click()
        cy.get('title').invoke('text').then(title => {
            expect(title).to.be.equals('JSONPlaceholder - Guide')
        });
    });

    it('Acessar link albuns', () => {
        cy.get('body > div > main > ul > li:nth-child(2) > a').click()
    });

    it('Validar item id 6', () => {
        cy.get('pre').invoke('text').then(jsonText => {
            const arr = JSON.parse(jsonText)
            const item = arr.find(i => i.id === 6)
            
            expect(item).to.not.be.null
            expect(item.albumId).to.be.a('number')
            expect(item.id).to.be.a('number')
            expect(item.thumbnailUrl).to.be.a('string')
            expect(item.title).to.be.a('string')
            expect(item.url).to.be.a('string')
        });
    });
})
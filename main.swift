class Contato {
    var nome: String
    var telefone: String
    var email: String
    
    init(nome: String, telefone: String, email: String) {
        self.nome = nome
        self.telefone = telefone
        self.email = email
    }
}

class Agenda {
    var contatos: [Contato]
    
    init() {
        self.contatos = []
    }
    
    func adicionaContato(nome: String, telefone: String, email: String) {
        let contato = Contato(nome: nome, telefone: telefone, email: email)
        contatos.append(contato)
    }
    
    func removeContato(nome: String) {
        contatos = contatos.filter { $0.nome != nome }
    }

    func editaContato(nome: String, novoTelefone: String, novoEmail: String) {
        if let contato = contatos.first(where: { $0.nome == nome }) {
            contato.telefone = novoTelefone
            contato.email = novoEmail
        }
    }
    
    func listaContatos() {
        print("Lista de Contatos:")
        for contato in contatos {
            print("Nome: \(contato.nome), Telefone: \(contato.telefone), Email: \(contato.email)")
        }
    }
}



let minhaAgenda = Agenda()

minhaAgenda.adicionaContato(nome: "Bernardo", telefone: "(85)996259693", email: "bernardosmm2004@gmail.com")
minhaAgenda.adicionaContato(nome: "Rebeca", telefone: "(85)997917162", email: "rebecaamorimwifi@gmail.com")

minhaAgenda.listaContatos()

minhaAgenda.removeContato(nome: "Bernardo")

minhaAgenda.listaContatos()

minhaAgenda.editaContato(nome: "Rebeca", novoTelefone: "(85)989336980", novoEmail: "rebecamaia@gmail.com")

minhaAgenda.listaContatos()


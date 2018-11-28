//
//  ViewController.swift
//  filmes
//
//  Created by Moises on 27/11/18.
//  Copyright © 2018 Moises. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "titulo 1", descricao: "descricao 1")
        filmes.append(filme)
        
        filme = Filme(titulo: "titulo 2", descricao: "descricao 2")
        filmes.append(filme)
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    // monta a celula da tabela 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme:Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath	)
        celula.textLabel?.text = filme.titulo
        
        return celula
    }
}



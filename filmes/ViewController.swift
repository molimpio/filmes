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
        let imagem1 = UIImage(named: "filme1")
        let imagem2 = UIImage(named: "filme2")
        let imagem3 = UIImage(named: "filme3")
        let imagem4 = UIImage(named: "filme4")
        let imagem5 = UIImage(named: "filme5")
        let imagem6 = UIImage(named: "filme6")
        let imagem7 = UIImage(named: "filme7")
        let imagem8 = UIImage(named: "filme8")
        let imagem9 = UIImage(named: "filme9")
        let imagem10 = UIImage(named: "filme10")
        
        filme = Filme(titulo: "007 - Spectre", descricao: "descricao 1", imagem: imagem1!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: imagem2!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao 2", imagem: imagem3!)
        filmes.append(filme)
        
        filme = Filme(titulo: "DeadPool", descricao: "descricao 2", imagem: imagem4!)
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "descricao 2", imagem: imagem5!)
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "descricao 2", imagem: imagem6!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Cacadores de Emocao ", descricao: "descricao 2", imagem: imagem7!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do mal", descricao: "descricao 2", imagem: imagem8!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "descricao 2", imagem: imagem9!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "descricao 2", imagem: imagem10!)
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
        celula.imageView?.image = filme.imagem
        
        return celula
    }
}



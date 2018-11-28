//
//  Filme.swift
//  filmes
//
//  Created by Moises on 27/11/18.
//  Copyright © 2018 Moises. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}

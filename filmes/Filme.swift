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
    var image: UIImage!
    
    init(titulo: String, descricao: String) {
        self.titulo = titulo
        self.descricao = descricao
    }
}

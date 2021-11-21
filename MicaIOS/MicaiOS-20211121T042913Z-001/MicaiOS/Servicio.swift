//
//  Servicio.swift
//  MicaiOS
//
//  Created by user194036 on 11/19/21.
//

import Foundation

class Servicio {
     
    var nombre: String
    var servicio: String
    var telefono: String
    var direccion: String
    var costo: Float
    var disponibilidad: String
    
    init(nombre: String, servicio: String, telefono: String, direccion: String, costo: Float, disponibilidad: String){
        
        self.nombre = nombre
        self.servicio = servicio
        self.telefono = telefono
        self.direccion = direccion
        self.costo = costo
        self.disponibilidad = disponibilidad
    }
        
}

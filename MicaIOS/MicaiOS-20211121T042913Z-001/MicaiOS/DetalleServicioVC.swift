//
//  DetalleServicioVC.swift
//  MicaiOS
//
//  Created by user194036 on 11/19/21.
//

import UIKit

class DetalleServicioVC: UIViewController {
    
    var nombre: String = "NULL"
    var servicio: String = "NULL"
    var telefono: String = "NULL"
    var direccion: String = "NULL"
    var costo: String = "NULL"
    var disponibilidad: String = "NULL"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = false
        nombreSer.text = "Nombre: " + nombre
        tipoSer.text = "Tipo: " + servicio
        telefonoSer.text  = "Telefono: " + telefono
        direccionSer.text = "Direccion: " + direccion
        costoSer.text = "Costo: " + costo
        disponSer.text = "Disponibilidad: " + disponibilidad
        
        

    }
    
    
    @IBOutlet weak var nombreSer: UILabel!
    
    
    @IBOutlet weak var tipoSer: UILabel!
    
    @IBOutlet weak var telefonoSer: UILabel!
    
    
    @IBOutlet weak var direccionSer: UILabel!
    
    
    @IBOutlet weak var costoSer: UILabel!
    
    
    @IBOutlet weak var disponSer: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

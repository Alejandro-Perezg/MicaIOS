//
//  ServiciosVC.swift
//  MicaiOS
//
//  Created by user194036 on 11/19/21.
//

import UIKit

class ServiciosVC: UIViewController {
    
    var arrServicios = [Servicio(nombre: "Agua Lupita",servicio: "Agua",telefono: "5534953836",direccion: "Calle 1",costo: 200.00,disponibilidad: "Si"),
                        Servicio(nombre: "Plomeria Lupita",servicio: "Plomeria" , telefono: "5548353298", direccion: "Calle 2", costo: 150.00, disponibilidad: "Si"),
                        Servicio(nombre: "Luz Lupita",servicio: "Luz" , telefono: "5542425120", direccion: "Calle 3", costo: 500.00, disponibilidad: "Si"),
                        Servicio(nombre: "Emergencias Lupita",servicio: "Emergencias" , telefono: "5542425144", direccion: "Calle 4", costo: 1000.00, disponibilidad: "Si"),
                        Servicio(nombre: "Gas Lupita",servicio: "Gas" , telefono: "5501010203", direccion: "Calle 4", costo: 700.00, disponibilidad: "Si")]
    let back = true
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = back
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tablaServicios.indexPathForSelectedRow
        let index = indexPath?.row
        
        if index != nil {
            let nombre = "\(arrServicios[index!].nombre)"
            let servicio = "\(arrServicios[index!].servicio)"
            let telefono = "\(arrServicios[index!].telefono)"
            let direccion = "\(arrServicios[index!].direccion)"
            let costo =  "\(arrServicios[index!].costo) MXN"
            let dispon = "\(arrServicios[index!].disponibilidad)"
            
            let vc = segue.destination as! DetalleServicioVC
            
            
            vc.nombre = nombre
            vc.servicio = servicio
            vc.telefono  = telefono
            vc.direccion = direccion
            vc.costo = costo
            vc.disponibilidad = dispon
            

        }
        
            
    }
    
    
    
    
    @IBOutlet weak var tablaServicios: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ServiciosVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrServicios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView
            .dequeueReusableCell(withIdentifier: "celdaServicio", for: indexPath)
        
        celda.textLabel?.text = arrServicios[indexPath.row].nombre
        return celda
    }
    
}


using GestionDeSeguros;
using Interfaces.Afps.Peticiones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsolaDePruebas
{
    class Program
    {
        static void Main(string[] args)
        {
            GestorDeAfp gestorDeAfps = new GestorDeAfp();

            NuevaAfp nuevaAfp = new NuevaAfp();
            nuevaAfp.Descripcion  = "AFP Primas";
            gestorDeAfps.CrearAfp(nuevaAfp);

            AfpActualizada afpActualzada = new AfpActualizada();
            afpActualzada.Id = 2;
            afpActualzada.Descripcion = "AFP Prima";
            gestorDeAfps.ActualizarAfp(afpActualzada);
            
            
        }
    }
}

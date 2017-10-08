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
            nuevaAfp.Descripcion  = "AFP Integra";
            gestorDeAfps.CrearAfp(nuevaAfp);

        }
    }
}

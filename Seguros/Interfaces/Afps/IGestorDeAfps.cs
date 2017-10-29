using Interfaces.Afps.Peticiones;
using Interfaces.Afps.Respuestas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interfaces.Afps
{
    public interface IGestorDeAfps
    {
        AfpRegistrada CrearAfp(NuevaAfp nuevaAfp);
        List<AfpRegistrada> ListarTodasLasAfp();
        List<AfpActualizada> ListarTodasLasAfp2();
        AfpActualizada ActualizarAfp(AfpActualizada afpActualizada);
        bool BorrarAfp(int idDeLaAfp);

    }
}

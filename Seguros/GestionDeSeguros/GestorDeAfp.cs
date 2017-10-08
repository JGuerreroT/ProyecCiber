using Interfaces.Afps;
using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces.Afps.Peticiones;
using Interfaces.Afps.Respuestas;

namespace GestionDeSeguros
{
    public class GestorDeAfp : IGestorDeAfps
    {
        public AfpRegistrada ActualizarAfp(AfpActualizada afpActualizada)
        {
            throw new NotImplementedException();
        }

        public bool BorrarAfp(int idDeLaAfp)
        {
            throw new NotImplementedException();
        }

        public AfpRegistrada CrearAfp(NuevaAfp nuevaAfp)
        {
            using (DB_SegurosEntities seguros = new DB_SegurosEntities())
            {
                tb_Afp afp = new tb_Afp();
                afp.Descripcion  = nuevaAfp.Descripcion ;
                afp.FechaCreacion= DateTime.Now;
                afp.FechaModificacion  = DateTime.Now;
                seguros.tb_Afp.Add(afp);
                seguros.SaveChanges();
                return ConvertirAfpA_DTO(afp);
            }
        }

        public List<AfpRegistrada> ListarTodasLasAfp()
        {
            throw new NotImplementedException();
        }

        private AfpRegistrada ConvertirAfpA_DTO(tb_Afp afp)
        {
            AfpRegistrada afpRegistrada = new AfpRegistrada();
            afpRegistrada.Id = afp.CodigoAfp ;
            afpRegistrada.Descripcion  = afp.Descripcion;
            return afpRegistrada;
        }
    }
}

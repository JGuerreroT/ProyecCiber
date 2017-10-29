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
        public AfpActualizada ActualizarAfp(AfpActualizada afpActualizada)
        {
            using (DB_SegurosEntities seguros = new DB_SegurosEntities())
            {
                tb_Afp afp = seguros.tb_Afp.Find(afpActualizada.Id);
                afp.CodigoAfp = afpActualizada.Id;
                afp.Descripcion = afpActualizada.Descripcion;
                seguros.Entry(afp);
                seguros.SaveChanges();
                return ConvertirAfpA_DTO2(afp);
            }
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
            using (DB_SegurosEntities seguros = new DB_SegurosEntities())
            {
                return seguros.tb_Afp.ToList().Select(x => ConvertirAfpA_DTO(x)).ToList();
            }
        }

        public List<AfpActualizada> ListarTodasLasAfp2()
        {
            using (DB_SegurosEntities seguros = new DB_SegurosEntities())
            {
                return seguros.tb_Afp.ToList().Select(x => ConvertirAfpA_DTO2(x)).ToList();
            }
        }

        private AfpRegistrada ConvertirAfpA_DTO(tb_Afp afp)
        {
            AfpRegistrada afpRegistrada = new AfpRegistrada();
            afpRegistrada.Id = afp.CodigoAfp ;
            afpRegistrada.Descripcion  = afp.Descripcion;
            return afpRegistrada;
        }

        private AfpActualizada ConvertirAfpA_DTO2(tb_Afp afp)
        {
            AfpActualizada afpActualizada = new AfpActualizada();
            afpActualizada.Id = afp.CodigoAfp;
            afpActualizada.Descripcion = afp.Descripcion;
            return afpActualizada;
        }
    }
}

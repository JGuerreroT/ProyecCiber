//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_TipoPersona
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tb_TipoPersona()
        {
            this.tb_BeneficiarioPoliza = new HashSet<tb_BeneficiarioPoliza>();
        }
    
        public int CodigoTipoPersona { get; set; }
        public string Descripcion { get; set; }
        public System.DateTime FechaCreacion { get; set; }
        public System.DateTime FechaModificacion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tb_BeneficiarioPoliza> tb_BeneficiarioPoliza { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class VUELO
    {
        public VUELO()
        {
            this.PASAJE = new HashSet<PASAJE>();
            this.TRAMO = new HashSet<TRAMO>();
        }
    
        public decimal ID_VUELO { get; set; }
        public System.DateTime HORA { get; set; }
    
        public virtual ICollection<PASAJE> PASAJE { get; set; }
        public virtual ICollection<TRAMO> TRAMO { get; set; }
    }
}

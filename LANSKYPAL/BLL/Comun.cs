using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Comun
    {
        private static Aerolinea _modeloAerolinea;
        
        public static Aerolinea modeloAerolinea
        {
            get{
                if (_modeloAerolinea == null)
                {
                    _modeloAerolinea = new Aerolinea();
                }
                return _modeloAerolinea;
            }
        }

        private Comun() { }
    }
}

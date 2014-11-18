using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Comun
    {
        private static AerolineaEntities _modeloAerolinea; 

        public static AerolineaEntities modeloAerolinea{
            get{
                if (_modeloAerolinea == null)
                {
                    _modeloAerolinea = new AerolineaEntities();
                }
                return _modeloAerolinea;
            }
        }

        private Comun() { }
    }
}

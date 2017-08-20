using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NUnitSample
{
    public class Luke
    {
        public int Div(int dividend, int divisor)
        {
            return dividend / divisor;
        }
        public void Boom()
        {
            throw new NotSupportedException();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public class Class1
    {
        public object TestJoinLinq()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var data = (from a in db.QAUsers
                        select new
                        {
                            aa = a.UserID
                            
                        }).ToList();
            return null;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization.Json;
using System.Text;

namespace Helpers
{
    public class ConvertersUtility
    {
        public static string JsonSerializer<T>(T t)
        {
            try
            {
                DataContractJsonSerializer serializer = new DataContractJsonSerializer(typeof(T));
                MemoryStream ms = new MemoryStream();
                serializer.WriteObject(ms, t);
                string jsonString = Encoding.UTF8.GetString(ms.ToArray());
                ms.Close();
                return jsonString;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static T JsonDeserialize<T>(string jsonString)
        {
            try
            {
                DataContractJsonSerializer serializer = new DataContractJsonSerializer(typeof(T));
                MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
                T obj = (T)serializer.ReadObject(ms);
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable ListToDataTable<T>(List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            //Get all the properties
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Setting column names as Property names
                dataTable.Columns.Add(prop.Name);
            }
            foreach (T item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {
                    //inserting property values to datatable rows
                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            //put a breakpoint here and check datatable
            return dataTable;
        }

        public static DataTable ExcelToCsv(string strPath, string strCommand)
        {
            OleDbConnection objOleDbConnection = new OleDbConnection();
            DataTable dataTable = new DataTable();
            try
            {
                string path = Path.GetFullPath(System.Web.HttpContext.Current.Server.MapPath(strPath));
                if (Path.GetExtension(path) == ".xls")
                {
                    objOleDbConnection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"");
                }
                else if (Path.GetExtension(path) == ".xlsx")
                {
                    objOleDbConnection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1;';");
                }
                objOleDbConnection.Open();
                OleDbCommand objOleDbCommand = new OleDbCommand();
                OleDbDataAdapter objOleDbDataAdapter = new OleDbDataAdapter();
                objOleDbCommand.Connection = objOleDbConnection;
                objOleDbCommand.CommandType = CommandType.Text;
                objOleDbCommand.CommandText = strCommand;
                objOleDbDataAdapter = new OleDbDataAdapter(objOleDbCommand);
                objOleDbDataAdapter.Fill(dataTable);
                return dataTable;
            }
            catch (Exception ex)
            {
                return dataTable;
            }
            finally
            {
                objOleDbConnection.Close();
            }
        }
    }
}

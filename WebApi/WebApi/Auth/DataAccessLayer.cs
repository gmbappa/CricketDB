using WebApi.Model;
using Microsoft.Data.SqlClient;
using Newtonsoft.Json;
using System.Data;

using System.Text.Json;

namespace WebApi.Auth
{
    public class DataAccessLayer
    {

        private readonly IConfiguration _configuration;
        public DataAccessLayer(          
            IConfiguration configuration)
        {
            
            _configuration = configuration;
        }      
        public IEnumerable<DashboardModel> GetAll(string userId)
        {
            var connectionString = _configuration.GetConnectionString("ConnStr");
            List<DashboardModel> lstStudent = new List<DashboardModel>();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetDashboards", con);
                cmd.Parameters.AddWithValue("@UserID", "11b2f72f-e282-4c24-a181-2f9c10b9a916");

                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();               
                DataSet ds = new DataSet(); 
                DataTable t;               
                while (!rdr.IsClosed)
                {
                    t = new DataTable();                   
                    t.Load(rdr);
                    ds.Tables.Add(t);                  
                }                
                if (ds.Tables.Count > 0)
                {
                    //   var serializedMyObjects  JsonSerializer.Serialize(dataTable);
                    var serializedMyObjects = JsonConvert.SerializeObject(ds);
                    lstStudent = (List<DashboardModel>)JsonConvert.DeserializeObject(serializedMyObjects, typeof(List<DashboardModel>));
                }
                con.Close();
            }
            return lstStudent;
        }
    }
}

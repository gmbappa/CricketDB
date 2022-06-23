using WebApi.Auth;
using WebApi.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Newtonsoft.Json;
using System.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DashboardsController : ControllerBase
    {
          
        private readonly IConfiguration _configuration;      

        public DashboardsController(        
            IConfiguration configuration        
            )
        {       
            _configuration = configuration;        
        }

        [HttpGet]
        [Route("Dashboard")]
        public async Task<Object> GetDashboard()
        {
            var connectionString = _configuration.GetConnectionString("ConnStr");          

            List<StrikeRateModel> StrikeRate = new List<StrikeRateModel>();
            List<BoundaryModel> Boundary = new List<BoundaryModel>();
            List<DotBallModel> DotBall = new List<DotBallModel>();
            List<ScoreModel> Score = new List<ScoreModel>();          
            List<NumberOfWicketModel> NumberOfWicket = new List<NumberOfWicketModel>();
            List<NumberOfWicketNameModel> NumberOfWicketName = new List<NumberOfWicketNameModel>();

            using (SqlConnection con = new SqlConnection(connectionString))
            {               
                string userId = User.Claims.First(c => c.Type == "UserID").Value;               
                SqlCommand cmd = new SqlCommand("spGetDashboards", con);
                cmd.Parameters.AddWithValue("@UserID", userId);

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
                    var serializedMyObjects = JsonConvert.SerializeObject(ds.Tables[0]);
                    StrikeRate = (List<StrikeRateModel>)JsonConvert.DeserializeObject(serializedMyObjects, typeof(List<StrikeRateModel>));
                                       
                    var serializedMyObjects2 = JsonConvert.SerializeObject(ds.Tables[1]);
                    Boundary= (List<BoundaryModel>)JsonConvert.DeserializeObject(serializedMyObjects2, typeof(List<BoundaryModel>));
                                       
                    var serializedMyObjects3 = JsonConvert.SerializeObject(ds.Tables[2]);
                    DotBall = (List<DotBallModel>)JsonConvert.DeserializeObject(serializedMyObjects3, typeof(List<DotBallModel>));
                                      
                    var serializedMyObjects4 = JsonConvert.SerializeObject(ds.Tables[3]);
                    Score = (List<ScoreModel>)JsonConvert.DeserializeObject(serializedMyObjects4, typeof(List<ScoreModel>));
                                    
                    var serializedMyObjects5 = JsonConvert.SerializeObject(ds.Tables[4]);
                    NumberOfWicket = (List<NumberOfWicketModel>)JsonConvert.DeserializeObject(serializedMyObjects5, typeof(List<NumberOfWicketModel>));
                                       
                    var serializedMyObjects6 = JsonConvert.SerializeObject(ds.Tables[5]);
                    NumberOfWicketName = (List<NumberOfWicketNameModel>)JsonConvert.DeserializeObject(serializedMyObjects6, typeof(List<NumberOfWicketNameModel>));                                     
                }
                con.Close();
            }
           
            return new
            {
                StrikeRate,
                Boundary,
                DotBall,
                Score,
                NumberOfWicket,
                NumberOfWicketName
            };
          //  return true;
        }

        public class StrikeRateModel : Base
        {                  
            public string? Rate { get; set; }           
        }

        public class BoundaryModel : Base
        {           
            public string? NumberOfBoundary { get; set; }          
        }

        public class DotBallModel : Base
        {
            public string? DotBalls { get; set; }
        }

        public class ScoreModel 
        {
            public string? Score { get; set; }
        }

        public class NumberOfWicketModel
        {
            public string? NumberOfWicket { get; set; }
        }

        public class NumberOfWicketNameModel
        {
            public string? Name { get; set; }
        }

        public class Base
        {
            public string? Date { get; set; }
            public string? Name { get; set; }
        }       


    }
}

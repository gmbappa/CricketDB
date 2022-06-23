namespace WebApi.Model
{
    public class DashboardModel
    {
        public string? id { get; set; }
        public List<StrikeRateModel> StrikeRates { get; set; }
        public List<BoundaryModel> Boundaries { get; set; }
        public List<DotBallModel> DotBalls { get; set; }
        public List<NumberOfWicketModel> NumberOfWicket { get; set; }
        public List<NumberOfWicketNameModel> NumberOfWicketName { get; set; }

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

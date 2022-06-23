using WebApi.Auth;
using WebApi.Model;

namespace WebApi.Service
{
    public class BoundaryService : IBoundaryService
    {
        public ApplicationDbContext _applicationDbContext;
        public BoundaryService(ApplicationDbContext applicationDbContext)
        {
            _applicationDbContext = applicationDbContext;
        }
        public Boundary AddBoundary(Boundary Boundary)
        {
            _applicationDbContext.Boundaries.Add(Boundary);
            _applicationDbContext.SaveChanges();
            return Boundary;
        }
        public List<Boundary> GetBoundaries()
        {
            return _applicationDbContext.Boundaries.ToList();
        }

        public void UpdateBoundary(Boundary Boundary)
        {
            _applicationDbContext.Boundaries.Update(Boundary);
            _applicationDbContext.SaveChanges();
        }

        public void DeleteBoundary(int Id)
        {
            var Boundary = _applicationDbContext.Boundaries.FirstOrDefault(x => x.Id == Id);
            if (Boundary != null)
            {
                _applicationDbContext.Remove(Boundary);
                _applicationDbContext.SaveChanges();
            }
        }
        public Boundary GetBoundary(int Id)
        {
            return _applicationDbContext.Boundaries.FirstOrDefault(x => x.Id == Id);
        }
    }
    public interface IBoundaryService
    {
        Boundary AddBoundary(Boundary boundary);
        List<Boundary> GetBoundaries();
        void UpdateBoundary(Boundary boundary);
        void DeleteBoundary(int Id);
        Boundary GetBoundary(int Id);
    }
}

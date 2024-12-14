using Microsoft.AspNetCore.Mvc;
using DaoManhTung_N05_221231041.Models;
namespace DaoManhTung_N05_221231041.ViewComponents
{
    public class NavViewComponent : ViewComponent
    {
        QlbanChauCanhContext db = new QlbanChauCanhContext();
        List<PhanLoaiPhu> nav;
        public NavViewComponent()
        {

            nav = db.PhanLoaiPhus.ToList();

        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            return View("Default", nav);
        }
    }
}

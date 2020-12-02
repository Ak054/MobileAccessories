using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using MoblieAccessories.BusinessLayer;
using MoblieAccessories.Data;

namespace MoblieAccessories.Orders
{
    public class IndexModel : PageModel
    {
        private readonly MoblieAccessories.Data.DairyFarmDataContext _context;

        public IndexModel(MoblieAccessories.Data.DairyFarmDataContext context)
        {
            _context = context;
        }

        public IList<Order> Order { get;set; }

        public async Task OnGetAsync()
        {
            Order = await _context.Orders
                .Include(o => o.Product).ToListAsync();
        }
    }
}

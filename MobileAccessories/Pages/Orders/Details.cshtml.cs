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
    public class DetailsModel : PageModel
    {
        private readonly MoblieAccessories.Data.DairyFarmDataContext _context;

        public DetailsModel(MoblieAccessories.Data.DairyFarmDataContext context)
        {
            _context = context;
        }

        public Order Order { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Order = await _context.Orders
                .Include(o => o.Product).FirstOrDefaultAsync(m => m.OrderID == id);

            if (Order == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}

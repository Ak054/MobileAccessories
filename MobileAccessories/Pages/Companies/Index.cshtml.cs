using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using MoblieAccessories.BusinessLayer;
using MoblieAccessories.Data;

namespace MoblieAccessories.Companies
{
    public class IndexModel : PageModel
    {
        private readonly MoblieAccessories.Data.DairyFarmDataContext _context;

        public IndexModel(MoblieAccessories.Data.DairyFarmDataContext context)
        {
            _context = context;
        }

        public IList<Company> Company { get;set; }

        public async Task OnGetAsync()
        {
            Company = await _context.Companies.ToListAsync();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using MoblieAccessories.BusinessLayer;
using MoblieAccessories.Data;

namespace MoblieAccessories.Products
{
    public class CreateModel : PageModel
    {
        private readonly MoblieAccessories.Data.DairyFarmDataContext _context;

        public CreateModel(MoblieAccessories.Data.DairyFarmDataContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
        ViewData["CategoryID"] = new SelectList(_context.Categories, "CategoryID", "CategoryName");
        ViewData["CompanyID"] = new SelectList(_context.Companies, "CompanyID", "CompanyName");
            return Page();
        }

        [BindProperty]
        public Product Product { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Products.Add(Product);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}

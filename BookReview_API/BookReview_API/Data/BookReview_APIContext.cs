using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BookReview_API;

namespace BookReview_API.Data
{
    public class BookReview_APIContext : DbContext
    {
        public BookReview_APIContext (DbContextOptions<BookReview_APIContext> options)
            : base(options)
        {
        }

        public DbSet<BookReview_API.Book> Book { get; set; } = default!;
        public DbSet<BookReview_API.Review> Review { get; set; } = default!;
    }
}

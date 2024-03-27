using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection.Metadata;

namespace BookReview_API
{
    public class Book
    {
        [Key]
        public int BookId { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Author { get; set; }
        [StringLength(250)]
        public string Description { get; set; }
    }

    public class Review
    {
        [Key]
        public int ReviewId { get; set; }
        [ForeignKey(nameof(Book))]
        public int BookId { get; set; }
        [Required]
        [Range(1,5, ErrorMessage = "Must be between 1 and 5 inclusive")]
        public int Rating { get; set; }
        [StringLength(250)]
        public string Comment { get; set; }
        [Required]
        public string Reviewer { get; set; }
    }
}

using System.ComponentModel.DataAnnotations;
using burger_shack.Interfaces;

namespace burger_shack.Models
{

  public class Burger : IMenuItem
  {
    public int Id { get; set; }

    [Required]
    [MinLength(3)]
    public string Name { get; set; }
    public string Description { get; set; }
    [Required]
    public double Price { get; set; }
    public int KCal { get; set; }
  }

  public class UserBurgerOrderReport
  {
    public string OrderId { get; set; }
    public string BurgerName { get; set; }
    public User User { get; set; }
  }

}
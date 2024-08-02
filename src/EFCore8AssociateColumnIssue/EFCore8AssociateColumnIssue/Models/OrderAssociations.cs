namespace EFCore8AssociateColumnIssue.Models;

public partial class Order
{
    public IEnumerable<OrderItem> OrderItems { get; set; } = new List<OrderItem>();

}
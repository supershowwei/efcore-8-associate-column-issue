
using EFCore8AssociateColumnIssue.Models;
using Microsoft.EntityFrameworkCore;

namespace EFCore8AssociateColumnIssue
{
    internal class Program
    {
        public static async Task Main(string[] args)
        {
            var optionsBuilder = new DbContextOptionsBuilder<TestContext>().UseSqlServer(
                "Server={Db Server};Database={Db};User Id={User Id};Password={Pwd};TrustServerCertificate=True");

            var testCtx = new TestContext(optionsBuilder.Options);

            // Throw exception 'Microsoft.Data.SqlClient.SqlException: 'Invalid column name 'OrderId'.''
            var orders = await testCtx.Orders.GroupJoin(
                                 testCtx.OrderItems,
                                 order => order.Id,
                                 orderItem => orderItem.OrId,
                                 (order, orderItems) => new Order { Id = order.Id, OrderItems = orderItems })
                             .ToListAsync();

            Console.WriteLine("Hello, World!");
        }
    }
}
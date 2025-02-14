﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EFCore8AssociateColumnIssue.Models;

[Table("OrderItem")]
public partial class OrderItem
{
    [Key]
    public int Id { get; set; }

    [Required]
    [StringLength(50)]
    [Unicode(false)]
    public string OrId { get; set; }

    [Required]
    [StringLength(50)]
    public string ProductName { get; set; }

    [Column(TypeName = "decimal(18, 5)")]
    public decimal Price { get; set; }

    public int Count { get; set; }
}
﻿using System;
using System.Collections.Generic;

namespace DaoManhTung_N05_221231041.Models;

public partial class MauSac
{
    public string MaMau { get; set; } = null!;

    public string TenMau { get; set; } = null!;

    public virtual ICollection<SptheoMau> SptheoMaus { get; set; } = new List<SptheoMau>();
}

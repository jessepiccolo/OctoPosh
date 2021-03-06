﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Octopus.Client.Model;

namespace Octoposh.Model
{
    public class OutputOctopusProjectGroup
    {
        public string Name { get; set; }
        public string Id { get; set; }
        public List<String> Projects { get; set; }
        public ProjectGroupResource Resource { get; set; }
    }
}

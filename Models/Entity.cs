﻿using System;

namespace Models
{
    public abstract class Entity
    {
        public int Id { get; set; }

        public DateTime Created { get; }
    }
}

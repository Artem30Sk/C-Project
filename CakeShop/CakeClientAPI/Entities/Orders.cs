//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CakeClientAPI.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Orders
    {
        public int Id { get; set; }
        public int IdUser { get; set; }
        public int IdRecipe { get; set; }
        public int Weight { get; set; }
        public decimal Cost { get; set; }
        public string Address { get; set; }
        public System.DateTime Data { get; set; }
    
        public virtual Recipe Recipe { get; set; }
        public virtual User User { get; set; }
    }
}

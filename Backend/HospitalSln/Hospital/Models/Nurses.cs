//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hospital.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Nurses
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string WorkHours { get; set; }
        public Nullable<int> Salary { get; set; }
        public Nullable<int> DoctorId { get; set; }
        public Nullable<int> DepartmentId { get; set; }
    
        public virtual Departments Departments { get; set; }
        public virtual Doctors Doctors { get; set; }
    }
}

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
    
    public partial class Appointments
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> Time { get; set; }
        public string Phone { get; set; }
        public Nullable<int> DoctorId { get; set; }
        public Nullable<int> DepartmentId { get; set; }
    
        public virtual Departments Departments { get; set; }
        public virtual Doctors Doctors { get; set; }
    }
}

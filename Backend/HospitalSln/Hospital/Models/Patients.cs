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
    using System.ComponentModel;

    public partial class Patients
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public int Payment { get; set; }

        [DisplayName("Inspection Date")]
        public DateTime InspectionDate { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }

    }
}

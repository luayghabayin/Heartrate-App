using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace A1LuayGhabayin
{
    public class HeartRates
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String gender { get; set; }
        public int yearofBirth { get; set; }
        public int currentYear { get; set; }
        public int Age { get; set; }
        public int Max { get; set; }
        public int MaxRange { get; set; }
        public int MinRange { get; set; }

        public HeartRates(String first, String last, int yobirth, String Gender)
        {
            firstName = first;
            lastName = last;
            yearofBirth = yobirth;
            gender = Gender;

            DateTime now = DateTime.Now;
            currentYear = now.Year;

            Age = calculatingAge(yearofBirth, currentYear);
            Max = calculatingMAX(Age, Gender);
        }

        public int calculatingMAX(int age, String gender)
        {
            if (gender == "women".ToLower())
            {
                return 226 - age;
            }
            else
            {
                return 220 - age;
            }
        }

        public int calculatingAge(int yearofBirth, int currentYear)
        {
            return currentYear - yearofBirth;
        }

        public String calculatingHeartrates(int Max)
        {
            MaxRange = Max * 70 / 100;
            MinRange = Max * 55 / 100;

            String temp = MinRange + " - " + MaxRange + " bpm";

            return temp;
        }
    }
}
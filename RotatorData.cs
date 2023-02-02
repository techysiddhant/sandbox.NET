using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sandbox.classes
{
    public class RotatorData
    {
        public string Name { get; set; }
        public string Profile { get; set; }
        public string ImageUrl { get; set; }

        public static List<RotatorData> GetRotators()
        {
            List<RotatorData> list = new List<RotatorData>();
            RotatorData item = new RotatorData();
            item.Name = "Siddhant";
            item.Profile = "Dr. Akshata Tandon, is an alumini of IIT Kanpur, India, one of the most prestigious technical Institutes in the world and a Ph.D from MNNIT Allahabad in Electronics and Communication. She has numerous papers in various international journals to her credit. She is also the author of several Physics books for high school grades and college levels. She has been a passionate dedicated educator since last 15 years, guiding students at graduation as well as post-graduation levels. She also has always had a special place in her heart for teaching Math and Physics to younger minds.";
            //item.ImageUrl = "https://images.pexels.com/photos/15239167/pexels-photo-15239167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2";
            item.ImageUrl = "~/assests/images/img1.jpg";
            list.Add(item);
            item = new RotatorData();
            item.Name = "Siddhant-1";
            item.Profile = "G. Jyoti is a certified IELTS Trainer and an online English Tutor with a Master’s degree in English Literature. As a subject matter expert, she has a 5+ years of training experience with HSBC Bank";
            //item.ImageUrl = "https://images.pexels.com/photos/7364196/pexels-photo-7364196.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2";
            item.ImageUrl = "~/assests/images/img3.jpg";
            list.Add(item);
            item = new RotatorData();
            item.Name = "Siddhant-2";
            item.Profile = "Mr Ravi Shanker Panicker is passionate about teaching, with a total teaching experience of 24 years. He is Senior Assistant Professor and Head of the Department at a regional engineering college. He is a Ph.D. pursuing M.A. M.Phil and Diploma from US in Teaching of English as a Second Language. He has praiseworthy Presentation skills and has published 5 International papers. He is also a professional translator, trains students and faculties on presentation techniques, public speaking, anchoring, art of debating and have conducted personality development sessions on time management, anger management, employability skills, self-esteem etc.";
            item.ImageUrl = "~/assests/images/img3.jpg";
            //item.ImageUrl = "https://images.pexels.com/photos/15296478/pexels-photo-15296478.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2";
            list.Add(item);
            return list;
        }
    }
}
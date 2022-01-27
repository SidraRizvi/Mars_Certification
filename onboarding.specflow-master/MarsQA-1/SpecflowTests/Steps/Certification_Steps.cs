using MarsQA_1.Helpers;
using MarsQA_1.SpecflowPages.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;

namespace MarsQA_1.SpecflowTests.Steps
{
    [Binding]
    public class Certification_Steps
    {

        [Given(@"I am on the Certification page")]
        public void GivenIAmOnTheCertificationPage()
        {
            //Read data from excel spreadsheet
            ExcelLibHelper.PopulateInCollection($@"{ConstantHelpers.DataDataPath}", "Certifications");

            //Assertion to varify sucessful Login

            Certification.AddCertification();
            Certification.AddCertificate_Verify();
        }


        [Given(@"I want to update Certification details")]
        public void GivenIWantToUpdateCertificationDetails()
        {
            //Read data from excel spreadsheet
            ExcelLibHelper.PopulateInCollection($@"{ConstantHelpers.DataDataPath}", "EditCertifications");
            Certification.EditCertfications();
            Certification.EditCertificate_Verify();
        }


        [Given(@"I want to delete certification details")]
        public void GivenIWantToDeleteCertificationDetails()
        {
            Certification.DeleteCertification();
            Certification.EditCertificate_Verify();
        }



       



    }

}















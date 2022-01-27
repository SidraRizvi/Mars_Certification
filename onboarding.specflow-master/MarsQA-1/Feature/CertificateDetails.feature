Feature: CertificateDetails
Seller wants to add, edit and delete Certification details to his profile
On adding them it should be reflected on his dashboard

@Home@Profile@CertificationTab@AddNewCertificate
Scenario: Add Certifcation

Given I am on the Certification page
When I enter <Certification>,<CertificatedFrom> and <Year>
And Click AddNew Button
Then Verify that the certifications detail has been added

| Certification | CertificatedFrom | Year | Message                                                                    |
| ITIL          | Microsoft        | 2020 | ITIL has been added to your certification                                  |
|               |                  |      | Please enter Certification Name, Certification From and Certification Year |
| ITIL          |   Microsoft      | 2020 |  This information is already exist.                                        |

@Home@Profile@CertificationTab@EditCertificate
Scenario: Update Certifcation

Given I want to update Certification details
When I enter the new details
And I click the Edit button
Then Verify that the Certification details are updated

| Certification | CertificatedFrom | Year | Message                                                                    |
| SQL           | MSSQL            | 2020 | SQL has been updated to your certifications                                |
| SQL           | MSSQL            | 2020 | This information is already exist.                                         |
|               |                  |      | Please enter Certification Name, Certification From and Certification Year |                

@Home@Profile@CertificationTab@DeleteCertificate
Scenario: Delete Certifcation

Given I want to delete certification details
When I click the delete button
Then Verify that the certifications are deleted

| Certification | CertificatedFrom | Year | Message                                       |
| SQL           | MSSQL            | 2020 | SQL has been deleted from your certifications |   

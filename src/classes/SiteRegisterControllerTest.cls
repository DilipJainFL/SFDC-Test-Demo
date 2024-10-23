/**
 * Class containing tests for SiteRegisterController
 */
@IsTest
public with sharing class SiteRegisterControllerTest {
  @IsTest(SeeAllData=true)
  static void testRegistration() {
    SiteRegisterController controller = new SiteRegisterController();
    controller.username = 'test@force.com';
    controller.phone = '00000000000';
    controller.address = 'jaipur';
    controller.email = 'test@force.com';
    controller.communityNickname = 'test';
    controller.zipcode = '302022';
    // registerUser will always return null when the page isn't accessed as a guest user
    System.assert(controller.registerUser() == null);

    controller.password = 'abcd1234';
    controller.confirmPassword = 'abcd123';
    System.assert(controller.registerUser() == null);
  }
}

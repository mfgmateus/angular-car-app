import { AngularCarAppDemoPage } from './app.po';

describe('angular-car-app-demo App', () => {
  let page: AngularCarAppDemoPage;

  beforeEach(() => {
    page = new AngularCarAppDemoPage ();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});

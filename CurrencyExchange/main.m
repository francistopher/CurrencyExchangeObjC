//
//  main.m
//  CurrencyExchange
//
//  Created by Christopher Francisco on 7/23/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SiteScraper.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    SiteScraper *siteScraper;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        siteScraper = [SiteScraper sharedSiteScraper];
        [siteScraper setURL:@"https://stackoverflow.com/questions/11097220/unable-to-download-whole-html-page-objective-c-xcode"];
        NSString* siteContents = [siteScraper getStringHTML];
        NSLog(@"%@", siteContents);
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

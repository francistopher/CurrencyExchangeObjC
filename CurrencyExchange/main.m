//
//  main.m
//  CurrencyExchange
//
//  Created by Christopher Francisco on 7/23/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ResponseFetcher.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    ResponseFetcher* responseFetcher;
    @autoreleasepool {
        responseFetcher = [ResponseFetcher sharedResponseFetcher];
        [responseFetcher setURLString:@"https://api.exchangerate.host/latest?symbols=USD,EUR,CNY,GBP,RUB,INR&base=USD"]; // url call
        NSString* siteContents = [responseFetcher getHTMLString]; // url call's return
        NSLog(@"%@", siteContents); // print url call's return
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

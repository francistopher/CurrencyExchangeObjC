#import <Foundation/Foundation.h>

@interface ResponseFetcher : NSObject

+(id)sharedResponseFetcher;

-(NSString*)getURLString;
-(void)setURLString:(NSString*)string;
-(NSString*) getHTMLString;

@end

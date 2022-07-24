#import <Foundation/Foundation.h>

@interface SiteScraper : NSObject 

+(id)sharedSiteScraper;

-(NSString*)getURLString;
-(void)setURL:(NSString*)string;
-(NSString*) getStringHTML;



@end

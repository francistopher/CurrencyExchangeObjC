#import "SiteScraper.h"

@interface SiteScraper()

@property (nonatomic, retain) NSString *urlString;
@property (nonatomic, retain) NSURL *urlRequest;
@property (nonatomic, retain) NSString *html;

-(void) setRequest:(NSString*)url;
-(NSError*) setHtml;

-(NSURL*) getURLRequest;

@end

@implementation SiteScraper

@synthesize urlString;
@synthesize urlRequest;
@synthesize html;

+(id)sharedSiteScraper
{
    static SiteScraper *sharedSiteScraper = nil;
    @synchronized (self) {
        if (sharedSiteScraper == nil) {
            sharedSiteScraper = [[self alloc] init];
        }
    }
    return sharedSiteScraper;
}

-(void)setURL:(NSString*)string
{
	urlString = string;
}

-(NSString*)getURLString
{
	return urlString;
}

-(void)setRequest:(NSString *)url
{
    if (url != nil) {
        self.urlRequest = [NSURL URLWithString:url];
    } else {
        NSLog(@"NSString* is nil");
    }
}

-(NSError*)setHtml
{
    NSError *err = [[NSError alloc] init];
    self.html = [NSString stringWithContentsOfURL: [self getURLRequest] encoding:NSUTF8StringEncoding error: &err]; // dammit just returns the raw html
    return err;
}

-(NSURL*)getURLRequest
{
    return [self urlRequest];
}

-(NSString*)getStringHTML
{
    [self setRequest:[self urlString]];
    NSError *err = [self setHtml];
    if (err) {
        return [self html];
    } else {
        return @"";
    }
}


@end


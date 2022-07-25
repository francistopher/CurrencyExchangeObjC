#import "ResponseFetcher.h"

@interface ResponseFetcher()

@property (nonatomic, retain) NSString *urlString;
@property (nonatomic, retain) NSURL *urlRequest;
@property (nonatomic, retain) NSString *htmlString;

-(void) setURLRequest:(NSString*)url;
-(NSError*) setHTMLString;
-(NSURL*) getURLRequest;

@end

@implementation ResponseFetcher

@synthesize urlString;
@synthesize urlRequest;
@synthesize htmlString;

+(id)sharedResponseFetcher
{
    static ResponseFetcher *sharedResponseFetcher = nil;
    @synchronized (self) {
        if (sharedResponseFetcher == nil) {
            sharedResponseFetcher = [[self alloc] init];
        }
    }
    return sharedResponseFetcher;
}

-(void)setURLString:(NSString*)string
{
	self.urlString = string;
}

-(NSString*)getURLString
{
	return [self urlString];
}

-(void)setURLRequest:(NSString *)url
{
    if (url != nil) {
        self.urlRequest = [NSURL URLWithString:url];
    } else {
        NSLog(@"NSString* is nil");
    }
}

-(NSURL*)getURLRequest
{
    return [self urlRequest];
}

-(NSError*)setHTMLString
{
    NSError *err = [[NSError alloc] init];
	self.htmlString = [NSString stringWithContentsOfURL: [self getURLRequest] encoding:NSUTF8StringEncoding error: &err];
    return err;
}


-(NSString*)getHTMLString
{
    [self setURLRequest:[self urlString]];
    NSError *err = [self setHTMLString];
    if (err) {
        return [self htmlString];
    } else {
        return @"YOUR URL REQUEST SUCKS!";
    }
}

@end

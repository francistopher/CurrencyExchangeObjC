//
//  ViewController.m
//  CurrencyExchange
//
//  Created by Christopher Francisco on 7/23/22.
//

#import "IntroController.h"

@interface IntroController ()

typedef NS_ENUM(NSUInteger, Acronym) {
    D, B, C, F
};
@property (nonatomic, readwrite) NSString* letters;

@end

@implementation IntroController
@synthesize letters;


+(id)sharedIntroController
{
    static IntroController* sharedIntroController = nil;
    @synchronized (self) {
        if (sharedIntroController == nil) {
            sharedIntroController = [[self alloc] init];
        }
    }
    return sharedIntroController;
}

-(id)init
{
    if (self = [super init]) {
        char * lettersC = malloc(sizeof(char) * 5);
        *(lettersC + 0) = 'D';
        *(lettersC + 1) = 'B';
        *(lettersC + 2) = 'C';
        *(lettersC + 3) = 'F';
        *(lettersC + 4) = '\0';
        letters = [NSString stringWithUTF8String:lettersC];
//        NSMutableArray* lettersData = [[NSMutableArray alloc] initWithCapacity:sizeof(char) * 5];
//        letters = [lettersData mutableCopy];
//
//        //*(letters + 0) = 'D';
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel* introLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    introLabel.text = @"Hello, World!";
    [[self view] addSubview:introLabel];
    self.view.backgroundColor = UIColor.whiteColor;
    NSLog(@"%@", [self getLetters]);
    NSLog(@"HELLO");
}

-(NSString*) getLetters
{
    return [self letters];
}


@end

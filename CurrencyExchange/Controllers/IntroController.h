//
//  ViewController.h
//  CurrencyExchange
//
//  Created by Christopher Francisco on 7/23/22.
//

#import <UIKit/UIKit.h>



@interface IntroController : UIViewController

@property (nonatomic, readonly) NSString* letters;

-(NSString*) getLetters;
+(id)sharedIntroController;
-(id)init;



@end


//
//  ViewController.m
//  CurrencyExchange
//
//  Created by Christopher Francisco on 7/23/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel* introLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    introLabel.text = @"Hello, World!";
    [[self view] addSubview:introLabel];
    self.view.backgroundColor = UIColor.whiteColor;
}


@end

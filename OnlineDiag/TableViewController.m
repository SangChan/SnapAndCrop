//
//  TableViewController.m
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 21..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import "TableViewController.h"
#import "WebViewController.h"
#import "UIButton+Custom.h"

@interface TableViewController () {
    NSString *diagURL;
}

@end

@implementation TableViewController

@synthesize diagResult, OKButton;
@synthesize answer1,answer2,answer3,answer4,answer5,answer6,answer7,answer8,answer9,answer10;
@synthesize answer11,answer12,answer13,answer14,answer15,answer16,answer17,answer18,answer19,answer20;
@synthesize answer21,answer22,answer23,answer24,answer25,answer26,answer27,answer28,answer29;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"JEI학력진단";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *homeButton = [[UIBarButtonItem alloc] initWithTitle:@"홈" style:UIBarButtonItemStylePlain target:self action:@selector(homebuttonPressed)];
    [self.navigationItem setRightBarButtonItem:homeButton];
    [OKButton fillRectStyle];
    
    
    //for (NSDictionary *answerData in diagResult) {
    //    answerData
    //}
    int j = 0;
    for (int i = 1; i < 30; i++) {
        NSDictionary *answerData = (j < [diagResult count]) ? [diagResult objectAtIndex:j] : nil;
        if (i == [[answerData objectForKey:@"num"] intValue]) {
            [self setAnswer:[[answerData objectForKey:@"pos"] intValue] ToIndex:i];
            j++;
        }
        else {
            [self setAnswer:0 ToIndex:i];
        }
    }
}

- (void)setAnswer:(int)labelVarInt ToIndex:(int)index {
    
    [self setValue:[NSString stringWithFormat:@"%i", labelVarInt] forKeyPath:[NSString stringWithFormat:@"answer%i.text", index]];
    
}

- (void)homebuttonPressed {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.title = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)description {
    return [diagResult description];
}

#pragma mark - Table view data source

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"showWebView"]) {
        WebViewController *wvc = (WebViewController *)[segue destinationViewController];
        [wvc setAbsoluteURL:diagURL];
        //[tvc setDiagResult:responseArray];
        NSLog(@"%@",[[segue destinationViewController]description]);
    }
}

- (IBAction)OKButtonClicked:(id)sender {
    
    diagURL = [NSString stringWithFormat:@"http://ml2.jei-victory.com/jeibiz/haksys/mobileomr/html/diagnosis.asp?hname=%@&dung=%@&tel=%@&mun001=%d&mun002=%d&mun003=%d&mun004=%d&mun005=%d&mun006=%d&mun007=%d&mun008=%d&mun009=%d&mun010=%d&mun011=%d&mun012=%d&mun013=%d&mun014=%d&mun015=%d&mun016=%d&mun017=%d&mun018=%d&mun019=%d&mun020=%d&mun021=%d&mun022=%d&mun023=%d&mun024=%d&mun025=%d&mun026=%d&mun027=%d&mun028=%d&mun029=%d",@"김재능",@"D",@"010-1111-2222",[[answer1 text] intValue],[[answer2 text] intValue],[[answer3 text] intValue],[[answer4 text] intValue],[[answer5 text] intValue],[[answer6 text] intValue],[[answer7 text] intValue],[[answer8 text] intValue],[[answer9 text] intValue],[[answer10 text] intValue],[[answer11 text] intValue],[[answer12 text] intValue],[[answer13 text] intValue],[[answer14 text] intValue],[[answer15 text] intValue],[[answer16 text] intValue],[[answer17 text] intValue],[[answer18 text] intValue],[[answer19 text] intValue],[[answer20 text] intValue],[[answer21 text] intValue],[[answer22 text] intValue],[[answer23 text] intValue],[[answer24 text] intValue],[[answer25 text] intValue],[[answer26 text] intValue],[[answer27 text] intValue],[[answer28 text] intValue],[[answer29 text] intValue] ];
    [self performSegueWithIdentifier:@"showWebView" sender:self];
}
@end

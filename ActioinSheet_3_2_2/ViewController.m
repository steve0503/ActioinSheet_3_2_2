//
//  ViewController.m
//  ActioinSheet_3_2_2
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIActionSheetDelegate>

@end

@implementation ViewController{
    
    UIActionSheet *sheet2;
    
    int count;
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSLog(@"selected index : %d",buttonIndex);
    
    
}

-(void)willPresentActionSheet:(UIActionSheet *)actionSheet{
    
    if (2 == actionSheet.tag) {
        NSString *title = [NSString stringWithFormat:@"%d 번째",count++];
        actionSheet.title = title;
    }
    
    
}

-(IBAction)showBasicActionSheet:(id)sender{
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"제목" delegate:self cancelButtonTitle:@"취소" destructiveButtonTitle:@"중요" otherButtonTitles:@"확인1",@"확인2", nil];
    
    sheet.tag = 1;
    
    [sheet showInView:self.view];
    
    
    
}


-(IBAction)showActionSheetWithCount:(id)sender{
    if (nil == sheet2) {
        sheet2 = [[UIActionSheet alloc] initWithTitle:@"제목" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"선택1",@"선택2", nil];
    }
    [sheet2 showInView:self.view];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ALSViewController.m
//  ALSPayMent
//
//  Created by yangzmpang on 09/19/2017.
//  Copyright (c) 2017 yangzmpang. All rights reserved.
//

#import "ALSViewController.h"
//#import <ALSInAppPurchase/ALSInAppPurchase.h>

@interface ALSViewController ()

@end

@implementation ALSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*
    // 查询回调
    [[ALSRMStore defaultStore] ProductRequestProc:^(id id_array, id obj, NSDictionary* dic)
     {
         NSMutableDictionary* dic_id = id_array; // 返回产品列表的字典
         NSLog(@"product [%@]select......................", dic_id );
     }
                                           failed:^(id id_array,id obj, NSDictionary* dic)
     {
         NSMutableDictionary* dic_id = id_array;
         NSLog(@"product [%@] select failed.................", dic_id );
     }];
*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

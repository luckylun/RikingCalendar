//
//  ChooseRepeatViewController.m
//  RikingCalendar
//
//  Created by jinglun liang on 2017/7/26.
//  Copyright © 2017年 liangjinglun. All rights reserved.
//

#import "ChooseRepeatViewController.h"

@interface ChooseRepeatViewController ()

@property (nonatomic, strong)NSMutableArray *repeatArray;

@end

@implementation ChooseRepeatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initData];
    [self initUI];
    
    
}

#pragma mark - 加载UI
- (void)initUI{
    [self.view addSubview:self.dataTabView];
}

#pragma mark - 初始化数据源
- (void)initData{
    
    self.repeatArray = [NSMutableArray arrayWithObjects:@"不重复",@"每周一",@"",@"",@"",@"",@"",@"",@"",@"", nil];
    for (int i=0; i<10; i++) {
        if (i==0) {
            [self.dataArray addObject:@""];
        }else if (i==8){
            [self.dataArray addObject:@"法定工作日重复(智能跳过节假日)"];
        }else if (i==9){
            [self.dataArray addObject:@"法定节假日重复(智能跳过工作日)"];
        }else{
            [self.dataArray addObject:[NSString stringWithFormat:@"星期%d",i]];
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

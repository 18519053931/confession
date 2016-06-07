//
//  loginViewController.m
//  浪漫求爱
//
//  Created by bc on 16/6/6.
//  Copyright © 2016年 bc. All rights reserved.
//
#define Screen_height   [[UIScreen mainScreen] bounds].size.height
#define Screen_width    [[UIScreen mainScreen] bounds].size.width

#import "loginViewController.h"
#import "UIView+Orientation.h"
#import "GGView.h"
#import "MYViewController.h"
@interface loginViewController ()
@property (nonatomic,strong)UITextField *nameTextField;
@property (nonatomic,strong)UITextField *podTextField;
@property (nonatomic,strong)UIButton *loginButton;
@property (nonatomic,strong)UILabel *resultLabel;


@end

@implementation loginViewController
- (void)loadView
{
    [super loadView];
    self.view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height)] autorelease];
    [self loadSubviews];
//    UIView * vView = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 100, 200)];
//    vView.backgroundColor = [UIColor blueColor];
//    [vView setLFrame:CGRectMake(0, 0, 100, 200)];
//    [vView setPFrame:CGRectMake(0, 0, 100, 200)
//     ];
//    [self.view addSubview:vView];
//    [vView release];
}
-(void)loadSubviews{
    
        UIImageView *image = [[UIImageView alloc]init];
        image.frame = CGRectMake(0, 0, Screen_width,Screen_height);
        //image.frame = self.view.bounds;
        image.image = [UIImage imageNamed:@"美女.jpg"];
        [self.view addSubview:image];
        [image setLFrame:CGRectMake(0, 0, Screen_width,Screen_height)];
        [image setPFrame:CGRectMake(0, 0, Screen_height,Screen_width)];
        [image release];
    self.nameTextField = [[UITextField alloc]init];
    self.nameTextField.frame = CGRectMake(20, 40, self.view.bounds.size.width-20, 30);
    self.nameTextField.placeholder = @"请输入她的名字";
    [self.nameTextField setPFrame:CGRectMake(20, 40, Screen_width-20, 30)];
    [self.nameTextField setLFrame:CGRectMake(20, 40, Screen_width-20, 30)];
    [self.view addSubview:self.nameTextField];
    
    self.podTextField = [[UITextField alloc]init];
    self.podTextField.frame = CGRectMake(20, 80, self.view.bounds.size.width-20, 30);
    self.podTextField.placeholder = @"请输入她的生日";
    [self.podTextField setPFrame:CGRectMake(20, 80, Screen_width-20, 30)];
    [self.podTextField setLFrame:CGRectMake(20, 80,  Screen_width-20, 30)];
    [self.view addSubview:self.podTextField];
    
    self.loginButton = [[UIButton alloc]init];
    self.loginButton.frame = CGRectMake((Screen_width-50)/2, 140, 50, 20);
    [self.loginButton setPFrame:CGRectMake((Screen_width-50)/2, 140, 50, 20)];
    [self.loginButton setLFrame:CGRectMake((Screen_width-50)/2, 140, 50, 20)];
    
    
    [self.loginButton setTitle:@"确定" forState:UIControlStateNormal];
    [self.view addSubview:self.loginButton];
    
    [self.loginButton addTarget:self action:@selector(clickLoginButton:) forControlEvents:UIControlEventTouchUpInside];
    self.resultLabel = [[UILabel alloc]init];
    self.resultLabel.frame = CGRectMake(50, 200, Screen_width-100, 100);
    self.resultLabel.backgroundColor = [UIColor redColor];
    [self.resultLabel setPFrame:CGRectMake(100, 200, Screen_width-100, 100)];
    [self.resultLabel setLFrame:CGRectMake(100, 200, Screen_width-100, 100)];
    self.resultLabel.textAlignment = 1;
    
    [self.view addSubview:self.resultLabel];
    
}

-(void)clickLoginButton:(UIButton *)btn{
    [self login];
    [self.view endEditing:YES];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
-(void)login{
    NSString *name = self.nameTextField.text;
    NSString *pwd = self.podTextField.text;
    //非空判断
    //核心比对之前的有效性判断使用
    //多个if完成即可，只要发现数据非法
    //在这个if内，return即可格式如下：
    // if(条件1){
    //     。。。。
    //     return;
    // }
    // if(条件2){
    //     。。。。
    //     return;
    // }
    if (name.length==0 || pwd.length==0) {
        self.resultLabel.text = @"用户名或密码不能为空";
        return;
    }
    //核心比对
    if ([name isEqualToString:@"abc"] && [pwd isEqualToString:@"123"]) {
        self.resultLabel.text = @"登录成功";
       
       MYViewController *vc = [[MYViewController alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
      
        
        
    }else{
        self.resultLabel.text = @"用户名或密码错误";
        
    }
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

//-(void)initUI{
//    UIImageView *image = [[UIImageView alloc]init];
//    image.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
//    //image.frame = self.view.bounds;
//    image.image = [UIImage imageNamed:@"美女.jpg"];
//    [self.view addSubview:image];
//    [image setLFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [image setPFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [image release];
//    
//   
//    self.nameTextField = [[UITextField alloc]init];
//    self.nameTextField.frame = CGRectMake(20, 40, self.view.bounds.size.width-20, 30);
//    self.nameTextField.placeholder = @"请输入她的名字";
//    [self.view addSubview:self.nameTextField];
//}


#pragma mark - 旋转  －－  低于IOS6.0版本

// 是否允许横竖屏切换
- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    //支持所有的横竖屏幕
    return YES;
}


#pragma mark - 旋转 －－ 不低于IOS6.0版本

- (BOOL)shouldAutorotate {
    return YES;
}

//- (NSUInteger)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskAll;
//}

#pragma mark - 屏幕真被旋转的时候调用

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    // 这里的时候需要设置一下当前的终端的横竖屏状态
    [self willRotateToPortrait:UIInterfaceOrientationIsPortrait(toInterfaceOrientation)];
}

//此函数调整各个view在横竖屏中的不同位置
- (void)willRotateToPortrait:(BOOL)isPortrait {
    for (id subview in [self.view subviews]) {
        if ([subview respondsToSelector:@selector(resetOrientation:)]) {
            [subview resetOrientation:isPortrait];
        }
    }
}

- (void)dealloc {
    [super dealloc];
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

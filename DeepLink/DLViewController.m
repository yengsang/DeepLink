//
//  DLViewController.m
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import "DLViewController.h"
#import "DLDataController.h"
#import "DLCompanyProfile.h"

@interface DLViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.dataController = [[DLDataController alloc] initOnly];
    self.dataController = [DLDataController sharedCenter];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillEnterForeground:) name:UIApplicationDidBecomeActiveNotification object:nil];
    
    self.companyProfile = self.dataController.getCompanyProfile;
    self.companyName.text = _companyProfile.name;
    if ( [_companyProfile.name isEqual: @"Astro"])
        [self.companyLogo setImage:[UIImage imageNamed:@"astro.jpeg"]];
    if ( [_companyProfile.name isEqual: @"Maxis"])
        [self.companyLogo setImage:[UIImage imageNamed:@"maxis.jpeg"]];
    else
        [self.companyLogo setImage:[UIImage imageNamed:@"greenpacket.jpeg"]];
    
//    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [self.webView loadRequest:request];
    
    NSURL *websiteUrl = [NSURL URLWithString:_companyProfile.URL];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    NSLog(@"company name: %@", _companyProfile.URL);
    NSLog(@"company name: %@", websiteUrl);
    NSLog(@"company name: %@", urlRequest);
    [self.webView loadRequest:urlRequest];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

/*- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.companyProfile = self.dataController.getCompanyProfile;
    self.companyName.text = _companyProfile.name;
    if ( [_companyProfile.name isEqual: @"Astro"])
        [self.companyLogo setImage:[UIImage imageNamed:@"astro.jpeg"]];
    if ( [_companyProfile.name isEqual: @"Maxis"])
        [self.companyLogo setImage:[UIImage imageNamed:@"maxis.jpeg"]];
    else
        [self.companyLogo setImage:[UIImage imageNamed:@"greenpacket.jpeg"]];
    
    NSURL *websiteUrl = [NSURL URLWithString:_companyProfile.URL];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.companyWebsite loadRequest:urlRequest];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}*/

- (void)applicationWillEnterForeground:(NSNotification *)notification {
    self.companyProfile = [self.dataController getCompanyProfile];
    
    self.companyName.text = _companyProfile.name;
    NSLog(@"company name: %@", _companyProfile.name);
    NSLog(@"company name: %@", _companyProfile.URL);
    if ( [_companyProfile.name isEqual: @"Astro"])
        [self.companyLogo setImage:[UIImage imageNamed:@"astro.jpeg"]];
    else if ( [_companyProfile.name isEqual: @"Maxis"])
        [self.companyLogo setImage:[UIImage imageNamed:@"maxis.jpeg"]];
    else if ( [_companyProfile.name isEqual: @"GreenPacket"])
        [self.companyLogo setImage:[UIImage imageNamed:@"greenpacket.jpeg"]];
    else
        [self.companyLogo setImage:[UIImage imageNamed:@"google.jpeg"]];
    
    NSURL *websiteUrl = [NSURL URLWithString:_companyProfile.URL];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  FANInterstitialLogImpression
//
//  Created by Maximilian Tagher on 11/10/15.
//  Copyright © 2015 Tagher. All rights reserved.
//

#import "ViewController.h"
@import FBAudienceNetwork;

@interface ViewController () <FBInterstitialAdDelegate>

@property (nonatomic, strong) FBInterstitialAd *ad;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [FBAdSettings setLogLevel:FBAdLogLevelVerbose];
    
    self.ad = [[FBInterstitialAd alloc] initWithPlacementID:@"500413400097719_500415960097463"];
    self.ad.delegate = self;
    [self.ad loadAd];
    
}

- (void)interstitialAdDidClick:(nonnull FBInterstitialAd *)interstitialAd {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
}

- (void)interstitialAdDidClose:(nonnull FBInterstitialAd *)interstitialAd {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
}

- (void)interstitialAdWillClose:(nonnull FBInterstitialAd *)interstitialAd {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
}

- (void)interstitialAdDidLoad:(nonnull FBInterstitialAd *)interstitialAd {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
    [interstitialAd showAdFromRootViewController:self];
}

- (void)interstitialAd:(nonnull FBInterstitialAd *)interstitialAd didFailWithError:(nonnull NSError *)error {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
}

- (void)interstitialAdWillLogImpression:(nonnull FBInterstitialAd *)interstitialAd {
    NSLog(@"<%@:%@:%d",[self class],NSStringFromSelector(_cmd),__LINE__);
    NSLog(@"*** Did log impression ***");
}

@end

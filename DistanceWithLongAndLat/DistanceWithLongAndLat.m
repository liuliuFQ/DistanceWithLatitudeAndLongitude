//
//  DistanceWithLongAndLat.m
//  DistanceWithLongAndLat
//
//  Created by Ibokan on 14-5-19.
//  Copyright (c) 2014年 CainiaoLiu. All rights reserved.
//
#define kMath_PI  3.1415926 //圆周率
#define kEARTH_RADIUS 6378137 //赤道半径
#import "DistanceWithLongAndLat.h"

@implementation DistanceWithLongAndLat

/**
 *  得到弧度
 *
 *  @param d 参数
 *
 */
-(double)radWithR:(double)d
{
    return d * kMath_PI/ 180.0;
    
}
//古城,39.9072014648,116.1902475357   北京站,39.9049628889,116.4272689819。18760米
-(double)getDistanceWithLon1:(double)lon1 andLat1:(double)lat1 withLon2:(double)lon2 andLat2:(double)lat2
{
    double radLat1 = [self radWithR:lat1];
    double radLat2 = [self radWithR:lat2];
    double a = radLat1 - radLat2;
    double b = [self radWithR:lon1] - [self radWithR:lon2];
    double s = 2 * asin(sqrt(pow(sin(a/2), 2) + cos(radLat1) * cos(radLat2) * pow(sin(b / 2 ), 2)));
    s = s * kEARTH_RADIUS;
    
    return  round(s * 10000) / 10000;
    
}

@end

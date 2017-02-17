///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///

#import "DBTransportDefaultConfig.h"

@implementation DBTransportDefaultConfig

- (instancetype)initWithAppKey:(NSString *)appKey {
  return [self initWithAppKey:appKey appSecret:nil userAgent:nil delegateQueue:nil forceForegroundSession:NO];
}

- (instancetype)initWithAppKey:(NSString *)appKey appSecret:(NSString *)appSecret {
  return [self initWithAppKey:appKey appSecret:appSecret userAgent:nil delegateQueue:nil forceForegroundSession:NO];
}

- (instancetype)initWithAppKey:(NSString *)appKey forceForegroundSession:(BOOL)forceForegroundSession {
  return [self initWithAppKey:appKey
                    appSecret:nil
                    userAgent:nil
                delegateQueue:nil
       forceForegroundSession:forceForegroundSession];
}

- (instancetype)initWithAppKey:(NSString *)appKey
                     appSecret:(NSString *)appSecret
                     userAgent:(NSString *)userAgent
                 delegateQueue:(NSOperationQueue *)delegateQueue
        forceForegroundSession:(BOOL)forceForegroundSession {
  return [self initWithAppKey:appKey
                    appSecret:appSecret
                    userAgent:userAgent
                   asMemberId:nil
                delegateQueue:delegateQueue
       forceForegroundSession:forceForegroundSession];
}

- (instancetype)initWithAppKey:(NSString *)appKey
                     appSecret:(NSString *)appSecret
                     userAgent:(NSString *)userAgent
                    asMemberId:(NSString *)asMemberId
                 delegateQueue:(NSOperationQueue *)delegateQueue
        forceForegroundSession:(BOOL)forceForegroundSession {
  if (self = [super initWithAppKey:appKey appSecret:appSecret userAgent:userAgent asMemberId:asMemberId]) {
    _delegateQueue = delegateQueue;
    _forceForegroundSession = forceForegroundSession;
  }
  return self;
}

@end

///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///

#import "DBTransportBaseConfig.h"

@implementation DBTransportBaseConfig

- (instancetype)initWithAppKey:(NSString *)appKey userAgent:(NSString *)userAgent {
  return [self initWithAppKey:appKey appSecret:nil userAgent:userAgent];
}

- (instancetype)initWithAppKey:(NSString *)appKey appSecret:(NSString *)appSecret userAgent:(NSString *)userAgent {
  return [self initWithAppKey:appKey appSecret:appSecret userAgent:userAgent asMemberId:nil];
}

- (instancetype)initWithAppKey:(NSString *)appKey
                     appSecret:(NSString *)appSecret
                     userAgent:(NSString *)userAgent
                    asMemberId:(NSString *)asMemberId {
  return
      [self initWithAppKey:appKey appSecret:appSecret userAgent:userAgent asMemberId:asMemberId additionalHeaders:nil];
}

- (instancetype)initWithAppKey:(NSString *)appKey
                     appSecret:(NSString *)appSecret
                     userAgent:(NSString *)userAgent
                    asMemberId:(NSString *)asMemberId
             additionalHeaders:(NSDictionary<NSString *, NSString *> *)additionalHeaders {
  return [self initWithAppKey:appKey
                    appSecret:appSecret
               hostnameConfig:nil
                    userAgent:userAgent
                   asMemberId:asMemberId
            additionalHeaders:additionalHeaders];
}

- (instancetype)initWithAppKey:(nullable NSString *)appKey
                     appSecret:(nullable NSString *)appSecret
                hostnameConfig:(nullable DBTransportBaseHostnameConfig *)hostnameConfig
                     userAgent:(nullable NSString *)userAgent
                    asMemberId:(nullable NSString *)asMemberId
             additionalHeaders:(nullable NSDictionary<NSString *, NSString *> *)additionalHeaders {
  if (self = [super init]) {
    _userAgent = userAgent;
    _appKey = appKey;
    _appSecret = appSecret;
    _hostnameConfig = hostnameConfig ?: [[DBTransportBaseHostnameConfig alloc] init];
    _asMemberId = asMemberId;
    _additionalHeaders = additionalHeaders;
  }
  return self;
}

@end

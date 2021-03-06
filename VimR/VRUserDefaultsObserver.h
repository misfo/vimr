/**
* Tae Won Ha — @hataewon
*
* http://taewon.de
* http://qvacua.com
*
* See LICENSE
*/

#import <Foundation/Foundation.h>


@protocol VRUserDefaultsObserver

@required
- (void)registerUserDefaultsObservation;
- (void)removeUserDefaultsObservation;

@end

//
//  CDVCameraPicker+Overlay.m
//  stepfolio
//
//  Created by ergovia GmbH on 09.10.13.
//
//
#import "CDVCameraPicker+Overlay.h"
#import <objc/runtime.h>

static void *overlayKey;

@implementation CDVCameraPicker (Overlay)
@dynamic showOverlay;

- (void) setShowOverlay:(id)showOverlay {
    objc_setAssociatedObject(self, overlayKey, showOverlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (id) showOverlay {
    return objc_getAssociatedObject(self, overlayKey);
}
@end

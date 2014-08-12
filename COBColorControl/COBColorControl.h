//
//  COBColorControl.h
//  COBColorControl
//
//  Created by Thomas Denney on 12/08/2014.
//  Copyright (c) 2014 Programming Thomas. All rights reserved.
//


@import UIKit;
@import GLKit;
@import OpenGLES.ES2.gl;
@import OpenGLES.ES2.glext;

//#import "NSObject+COB.h"
//#import "NSString+COB.h"

/**
 The Cocoa Butter color control presents a Photoshop style, multitouch, GPU accelerated HSB color picker. On the left hand side a 2D saturation-brightness square is presented. This is actually a GLKView and is rendered using OpenGL using its own context. Above this view a 'loupe' is presented with the current color which expands when the user places their finger on the view. The loupe is a custom private view that is rendered using Core Animation.
 
 A vertical slider is presented on the right hand side and is used to control the hue of the current color. This is a custom control, rather than a subclass of `UISlider`. It also uses the loupe view, however it is presented smaller.
 
 This view generally performs very well, however avoid using it in scenarios where you have lots of OpenGL drawing already, especially if you aren't using OpenGL ES 2.
 
 @note Please avoid subclassing this class
 */
@interface COBColorControl : UIControl<GLKViewDelegate>

/**
 The current hue.
 @note In the range 0 to 1
 */
@property (nonatomic) CGFloat hue;

/**
 The current saturation.
 @note In the range 0 to 1
 */
@property (nonatomic) CGFloat saturation;

/**
 The current brightness
 @note In the range 0 to 1
 */
@property (nonatomic) CGFloat brightness;

/**
 The current color, which is created from the current hue, saturation and brightness. This therefore means that the alpha component of the color is ignored.
 */
@property (nonatomic) UIColor * color;

@end


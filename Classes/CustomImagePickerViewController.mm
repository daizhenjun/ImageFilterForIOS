#include <vector>


#include <algorithm>
//#include "Image.h"
//v0.1
#include "InvertFilter.h"
#include "AutoLevelFilter.h"
#include "RadialDistortionFilter.h"
#include "BannerFilter.h"
#include "BigBrotherFilter.h"
#include "BlackWhiteFilter.h"
#include "ColorQuantizeFilter.h"
#include "ConvolutionFilter.h"
#include "BrickFilter.h"
#include "BlockPrintFilter.h"
#include "EdgeFilter.h"
#include "FeatherFilter.h"
#include "GaussianBlurFilter.h"
#include "GradientFilter.h"
#include "HistogramEqualFilter.h"
#include "LightFilter.h"
#include "MistFilter.h"
#include "MonitorFilter.h"
#include "MosaicFilter.h"
#include "NeonFilter.h"
#include "NightVisionFilter.h"
#include "NoiseFilter.h"
#include "OilPaintFilter.h"
#include "OldPhotoFilter.h"
#include "PixelateFilter.h"
#include "RainBowFilter.h"
#include "RectMatrixFilter.h"
#include "ReflectionFilter.h"
#include "ReliefFilter.h"
#include "SaturationModifyFilter.h"
#include "SepiaFilter.h"
#include "SmashColorFilter.h"
#include "ThresholdFilter.h"
#include "TintFilter.h"
#include "VignetteFilter.h"
#include "VintageFilter.h"
#include "WaterWaveFilter.h"
#include "XRadiationFilter.h"

//v0.2
#include "LomoFilter.h"
#include "PaintBorderFilter.h"
#include "SceneFilter.h"
#include "ComicFilter.h"
#include "FilmFilter.h"
#include "FocusFilter.h"
#include "CleanGlassFilter.h"

//v3
#include "ZoomBlurFilter.h"
#include "ThreeDGridFilter.h"
#include "ColorToneFilter.h"
#include "SoftGlowFilter.h"
#include "TileReflectionFilter.h"
#include "BlindFilter.h"
#include "RaiseFrameFilter.h"
#include "ShiftFilter.h"
#include "WaveFilter.h"
#include "BulgeFilter.h"
#include "TwistFilter.h"
#include "RippleFilter.h"
#include "IllusionFilter.h"
#include "SupernovaFilter.h"
#include "LensFlareFilter.h"
#include "PosterizeFilter.h"
#include "SharpFilter.h"
#include "VideoFilter.h"
#include "FillPatternFilter.h"
#include "MirrorFilter.h"
#include "YCBCrLinearFilter.h"
#include "TexturerFilter.h"
#include "CloudsTexture.h"
#include "LabyrinthTexture.h"
#include "MarbleTexture.h"
#include "TextileTexture.h"
#include "WoodTexture.h"
#include "HslModifyFilter.h"

using namespace HaoRan_ImageFilter;


vector<IImageFilter*> LoadFilterVector(){
	vector<IImageFilter*> vectorFilter;
    //v0.1
    vectorFilter.push_back(new InvertFilter);
    vectorFilter.push_back(new BlackWhiteFilter());
    vectorFilter.push_back(new EdgeFilter());
    vectorFilter.push_back(new PixelateFilter());  
    vectorFilter.push_back(new NeonFilter());
    vectorFilter.push_back(new BigBrotherFilter());
    vectorFilter.push_back(new MonitorFilter());
    vectorFilter.push_back(new ReliefFilter());
    vectorFilter.push_back(new BrightContrastFilter());
    vectorFilter.push_back(new SaturationModifyFilter());
    vectorFilter.push_back(new ThresholdFilter());
    vectorFilter.push_back(new NoiseFilter());
    vectorFilter.push_back(new BannerFilter(20, true));
    vectorFilter.push_back(new BannerFilter(20, false));
    vectorFilter.push_back(new RectMatrixFilter());
    vectorFilter.push_back(new BlockPrintFilter());
    vectorFilter.push_back(new BrickFilter());
    vectorFilter.push_back(new GaussianBlurFilter());
    vectorFilter.push_back(new LightFilter());
    vectorFilter.push_back(new MistFilter());
    vectorFilter.push_back(new MosaicFilter());
    vectorFilter.push_back(new OilPaintFilter());
    vectorFilter.push_back(new RadialDistortionFilter());
    vectorFilter.push_back(new ReflectionFilter(false));
    vectorFilter.push_back(new ReflectionFilter(true));
    vectorFilter.push_back(new SmashColorFilter());
    vectorFilter.push_back(new TintFilter());
    vectorFilter.push_back(new VintageFilter());
    vectorFilter.push_back(new AutoLevelFilter(0.5));
    vectorFilter.push_back(new ColorQuantizeFilter());
    vectorFilter.push_back(new WaterWaveFilter());
    vectorFilter.push_back(new VignetteFilter());
    vectorFilter.push_back(new OldPhotoFilter());
    vectorFilter.push_back(new SepiaFilter());
    vectorFilter.push_back(new RainBowFilter());  
  //  vectorFilter.push_back(new ConvolutionFilter());
    vectorFilter.push_back(new FeatherFilter());
      //vectorFilter.push_back(new GradientFilter());
    //vectorFilter.push_back(new GradientMapFilter());
    //vectorFilter.push_back(new HistogramEqualFilter());
    vectorFilter.push_back(new XRadiationFilter());
    vectorFilter.push_back(new NightVisionFilter());
   
    
    //v0.2
    vectorFilter.push_back(new LomoFilter());
    vectorFilter.push_back(new ComicFilter());
    vectorFilter.push_back(new SceneFilter(5.0f, Gradient::Scene()));
    vectorFilter.push_back(new SceneFilter(5.0f, Gradient::Scene1()));
    vectorFilter.push_back(new SceneFilter(5.0f, Gradient::Scene2()));
    vectorFilter.push_back(new SceneFilter(5.0f, Gradient::Scene3()));
    vectorFilter.push_back(new FilmFilter(80.0f));
    vectorFilter.push_back(new FocusFilter());
    vectorFilter.push_back(new CleanGlassFilter());
    vectorFilter.push_back(new PaintBorderFilter(0x00FF00));//green
    vectorFilter.push_back(new PaintBorderFilter(0x0000FF));//blue
    vectorFilter.push_back(new PaintBorderFilter(0xFFFF00));//yellow

    
    //v0.3
    vectorFilter.push_back(new ZoomBlurFilter(30));
    vectorFilter.push_back(new ThreeDGridFilter(16, 100));
    vectorFilter.push_back(new ColorToneFilter(Color::rgb(254,168,33), 192));	
    vectorFilter.push_back(new ColorToneFilter(0x00FF00, 192));	//green
    vectorFilter.push_back(new ColorToneFilter(0x0000FF, 192));	//blue
    vectorFilter.push_back(new ColorToneFilter(0xFFFF00, 192));	//yellow
    vectorFilter.push_back(new SoftGlowFilter(10, 0.1, 0.1));	
    vectorFilter.push_back(new TileReflectionFilter(20, 8));	
    vectorFilter.push_back(new BlindFilter(true, 50, 50, Color::rgb(255,255,255)));	
    vectorFilter.push_back(new BlindFilter(false, 40, 80, Color::rgb(0,0,0)));	
    vectorFilter.push_back(new RaiseFrameFilter(20));	
    vectorFilter.push_back(new ShiftFilter(10));	
    vectorFilter.push_back(new WaveFilter(25, 10));	
    vectorFilter.push_back(new BulgeFilter(-97));	
    vectorFilter.push_back(new TwistFilter(27, 106));
    vectorFilter.push_back(new RippleFilter(38, 15, true));
    vectorFilter.push_back(new IllusionFilter(3));
    vectorFilter.push_back(new SupernovaFilter(0xFFFF00,20,100));
    vectorFilter.push_back(new LensFlareFilter());
    vectorFilter.push_back(new PosterizeFilter(2));
    vectorFilter.push_back(new GammaFilter(50));
    vectorFilter.push_back(new SharpFilter());
	//目前累计提供约73种效果
    
    //v0.4
	vectorFilter.push_back(new VideoFilter(VideoFilter::VIDEO_STAGGERED));
	vectorFilter.push_back(new VideoFilter(VideoFilter::VIDEO_TRIPED));
	vectorFilter.push_back(new VideoFilter(VideoFilter::VIDEO_3X3));
	vectorFilter.push_back(new VideoFilter(VideoFilter::VIDEO_DOTS));
	vectorFilter.push_back(new TileReflectionFilter(20, 8, 45, 1));	
	vectorFilter.push_back(new TileReflectionFilter(20, 8, 45, 2));	
	vectorFilter.push_back(new FillPatternFilter(@"texture1.png"));
	vectorFilter.push_back(new FillPatternFilter(@"texture2.png"));
	vectorFilter.push_back(new MirrorFilter(true));
	vectorFilter.push_back(new MirrorFilter(false));
	vectorFilter.push_back(new YCBCrLinearFilter(new YCBCrLinearFilter::Range(-0.3f, 0.3f)));
	vectorFilter.push_back(new YCBCrLinearFilter(new YCBCrLinearFilter::Range(-0.276f, 0.163f), new YCBCrLinearFilter::Range(-0.202f, 0.5f)));
	vectorFilter.push_back(new TexturerFilter(new CloudsTexture(), 0.8, 0.8));
	vectorFilter.push_back(new TexturerFilter(new LabyrinthTexture(), 0.8, 0.8));
	vectorFilter.push_back(new TexturerFilter(new MarbleTexture(), 1.8, 0.8));
	vectorFilter.push_back(new TexturerFilter(new TextileTexture(), 0.8, 0.8));
	vectorFilter.push_back(new TexturerFilter(new WoodTexture(), 0.8, 0.8));
	vectorFilter.push_back(new HslModifyFilter(20));
	vectorFilter.push_back(new HslModifyFilter(40));
	vectorFilter.push_back(new HslModifyFilter(60));
	vectorFilter.push_back(new HslModifyFilter(80));
	vectorFilter.push_back(new HslModifyFilter(100));
	vectorFilter.push_back(new HslModifyFilter(150));
	vectorFilter.push_back(new HslModifyFilter(200));
	vectorFilter.push_back(new HslModifyFilter(250));
	vectorFilter.push_back(new HslModifyFilter(300));
    
	return vectorFilter;
}

//加载各种滤镜
vector<IImageFilter*> vectorFilter = LoadFilterVector();


#import "CustomImagePickerViewController.h"
#import "CustomImagePicker.h"
#import "CustomImagePickerAppDelegate.h"

@implementation CustomImagePickerViewController

@synthesize imageView = _imageView;
@synthesize imagePicker = _imagePicker;

- (void)viewDidLoad {

	// Initialize image picker
	_imagePicker = [[CustomImagePicker alloc] init];
	_imagePicker.title = @"请选择图片滤镜";
	
	// Add images to the picker
	// Note that this can take time due to resizing for thumbnails, so for production you
	// should either: a) have full-size and thumbs for each image pre-made, or:
	//                b) put a loading indicator in as this code runs
	//v0.1
	[_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"blackwhite_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"edge_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"pixelate_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"neon_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"bigbrother_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"monitor_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"relief_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"brightcontrast_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"saturationmodify_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"threshold_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"noisefilter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"banner_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"banner_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"rectmatrix_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"blockprint_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"brick_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"gaussianblur_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"light_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"mist_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"mosaic_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"oilpaint_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"radialdistortion_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"reflection1_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"reflection2_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"smashcolor_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"tint_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"vignette_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"autoadjust_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"colorquantize_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"waterwave_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"vintage_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"oldphoto_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"sepia_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"rainbow_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"feather_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"xradiation_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"nightvision_filter.jpg"]];
    
//    //v0.2
	[_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"invert_filter.jpg"]];
    
    //v0.3
	[_imagePicker addImage:[UIImage imageNamed:@"zoomblur_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"threedgrid_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"colortone_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"colortone_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"colortone_filter3.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"colortone_filter4.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"softglow_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"tilereflection_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"blind_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"blind_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"raiseframe_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"shift_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"wave_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"bulge_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"twist_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"ripple_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"illusion_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"supernova_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"lensflare_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"posterize_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"gamma_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"sharp_filter.jpg"]];
    
    //0.4
	[_imagePicker addImage:[UIImage imageNamed:@"video_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"video_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"video_filter3.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"video_filter4.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"tilereflection_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"tilereflection_filter2.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"fillpattern_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"fillpattern_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"mirror_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"mirror_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"ycb_crlinear_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"ycb_crlinear_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"texturer_filter.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"texturer_filter1.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"texturer_filter2.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"texturer_filter3.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"texturer_filter4.jpg"]];
	[_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter0.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter1.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter2.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter3.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter4.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter5.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter6.jpg"]];
    [_imagePicker addImage:[UIImage imageNamed:@"hslmodify_filter7.jpg"]];

}


- (UIImage *)imageByScalingProportionallyToSize:(UIImage*)source :(CGSize)targetSize  
{
    UIImage *sourceImage = source;
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if (widthFactor < heightFactor) 
            scaleFactor = widthFactor;
        else
            scaleFactor = heightFactor;
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        // center the image
        if (widthFactor < heightFactor) {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5; 
        } else if (widthFactor > heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    // this is actually the interesting part:
    UIGraphicsBeginImageContext(targetSize);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    [sourceImage drawInRect:thumbnailRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if(newImage == nil) NSLog(@"could not scale image");
    return newImage ;
}



- (void)viewWillAppear:(BOOL)animated {
	CGSize size = CGSizeMake(300, 480);

	_imageView.image = nil;//_imagePicker.selectedImage;
    if(_imagePicker.filterName >=0){
        Image image = Image::LoadImage(@"Koala.jpg");
        
        IImageFilter *filter;
        filter = vectorFilter[_imagePicker.filterName];  
            
        image = filter->process(image);	
        UIImage *finalImage = [UIImage imageWithCGImage:image.destImage];
        finalImage = [self imageByScalingProportionallyToSize:finalImage :size];
        _imageView.image = finalImage;
        image.Destroy();
        
    }
    else {
        UIImage * image = [UIImage imageNamed:@"Koala.jpg"];
        image = [self imageByScalingProportionallyToSize:image :size];
        // [image imageByScalingAndCroppingForSize:CGSizeMake(64, 64)];
        //_imageView.frame = CGRectMake(0, 0, 90, 110);
        _imageView.image = image;  
        // [_imageView setImage:image];
    }
	
}

- (IBAction)chooseCustomImageTapped:(id)sender {

	CustomImagePickerAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    UINavigationController *navController = [delegate navController];
    [navController pushViewController:_imagePicker animated:YES];
	
}

- (void)viewDidUnload {
    self.imageView = nil;
}

- (void)dealloc {
    [_imageView release];
	_imageView = nil;
    [_imagePicker release];
	_imagePicker = nil;
    [super dealloc];
}

@end

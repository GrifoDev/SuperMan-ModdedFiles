.class public Lcom/samsung/android/graphics/SemImageFilter;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;,
        Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;,
        Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;,
        Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;,
        Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;,
        Lcom/samsung/android/graphics/SemImageFilter$Animator;,
        Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;,
        Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;,
        Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;,
        Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;,
        Lcom/samsung/android/graphics/SemImageFilter$FilterType;,
        Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;,
        Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;,
        Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;,
        Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;,
        Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;,
        Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.ImageFilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.ImageFilter.log"

.field public static final DEBUG_HWUI_IMAGE_FILTER_RENDERER_PROPERTY:Ljava/lang/String; = "debug.hwui.renderer"

.field public static final FRAGMENT_SHADER_CODE_COMMON:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

.field public static final LOG_TAG:Ljava/lang/String; = "HWUI_IMAGE_FILTER"

.field public static final TYPE_BITMAP_COLOR:I = 0x34

.field public static final TYPE_BLENDING:I = 0x35

.field public static final TYPE_BLUR:I = 0x36

.field public static final TYPE_BOX_BLUR:I = 0x40

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_ADJUST:I = 0x11

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field public static final TYPE_CUSTOM_FILTER:I = 0xee

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DROP_SHADOW:I = 0x37

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_HUE:I = 0x44

.field public static final TYPE_KAWASE_BLUR:I = 0x41

.field public static final TYPE_KNITTED:I = 0x39

.field public static final TYPE_LENS_DISTORTION:I = 0x31

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_RADIAL_BLUR:I = 0x42

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_TILT_SHIFT_BLUR:I = 0x38

.field public static final TYPE_UNFOCUS_BLUR:I = 0x43

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3

.field public static final VERTEX_SHADER_CODE_COMMON:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

.field private static mGlobalAnimationId:I

.field protected static final sLogingEnabled:Z


# instance fields
.field private mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

.field protected mAnimationsParams:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

.field protected mNativeImageFilter:J

.field protected mView:Landroid/view/View;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemImageFilter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->killAnimation(I)V

    return-void
.end method

.method static synthetic -wrap1(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/graphics/SemImageFilter;->native_addAnimation(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V

    return-void
.end method

.method static synthetic -wrap2(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_killAnimation(JI)V

    return-void
.end method

.method static synthetic -wrap3(JLjava/lang/String;[FIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformfDirect(JLjava/lang/String;[FIII)V

    return-void
.end method

.method static synthetic -wrap4(JLjava/lang/String;[IIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformiDirect(JLjava/lang/String;[IIII)V

    return-void
.end method

.method static synthetic -wrap5(JIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->native_setValue(JIF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "debug.hwui.ImageFilter.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    sput v1, Lcom/samsung/android/graphics/SemImageFilter;->mGlobalAnimationId:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/samsung/android/graphics/SemImageFilter;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    iget-wide v0, p1, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->native_copy(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/graphics/SemImageFilter;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    goto :goto_0
.end method

.method public static createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/SemCustomFilter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/graphics/SemCustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private static createFilterByType(I)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Lcom/samsung/android/graphics/SemBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBlurFilter;-><init>()V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;-><init>()V

    return-object v0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/graphics/SemVignetteFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemVignetteFilter;-><init>()V

    return-object v0

    :sswitch_3
    new-instance v0, Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemMosaicFilter;-><init>()V

    return-object v0

    :sswitch_4
    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;-><init>()V

    return-object v0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDropShadowFilter;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x36 -> :sswitch_0
        0x37 -> :sswitch_5
    .end sparse-switch
.end method

.method private static createFilterByType(Lcom/samsung/android/graphics/SemImageFilter$FilterType;)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->GAUSSIAN:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->DIRECTIONAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;-><init>()V

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->ZOOM:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;-><init>()V

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->COSINE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/graphics/SemCosineBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemCosineBlurImageFilter;-><init>()V

    return-object v0

    :cond_3
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->SGI:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;-><init>()V

    return-object v0

    :cond_4
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->TILT_SHIFT:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;-><init>()V

    return-object v0

    :cond_5
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->KAWASE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;-><init>()V

    return-object v0

    :cond_6
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->BOX:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;-><init>()V

    return-object v0

    :cond_7
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->RADIAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;-><init>()V

    return-object v0

    :cond_8
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->UNFOCUS:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;-><init>()V

    return-object v0

    :cond_9
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->COLORIZE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;-><init>()V

    return-object v0

    :cond_a
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->ADJUST:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;-><init>()V

    return-object v0

    :cond_b
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->CLAMP:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;-><init>()V

    return-object v0

    :cond_c
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->BITMAP_COLOR_MASK:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;-><init>()V

    return-object v0

    :cond_d
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->BLEND:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;-><init>()V

    return-object v0

    :cond_e
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ColorFilterType;->HUE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/samsung/android/graphics/SemHueImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemHueImageFilter;-><init>()V

    return-object v0

    :cond_f
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;->DROP_SHADOW:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;-><init>()V

    return-object v0

    :cond_10
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;->VIGNETTE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/samsung/android/graphics/SemVignetteImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;-><init>()V

    return-object v0

    :cond_11
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->LENS_DISTORTION:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;-><init>()V

    return-object v0

    :cond_12
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->MOSAIC:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/samsung/android/graphics/SemMosaicImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemMosaicImageFilter;-><init>()V

    return-object v0

    :cond_13
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$DistortFilterType;->KNITTED:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/samsung/android/graphics/SemKnittedImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;-><init>()V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/graphics/SemImageFilter;->createFilterByType(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public static createImageFilter(Lcom/samsung/android/graphics/SemImageFilter$FilterType;)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/graphics/SemImageFilter;->createFilterByType(Lcom/samsung/android/graphics/SemImageFilter$FilterType;)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    return-object v0
.end method

.method private static native finalizer(J)V
.end method

.method private killAnimation(I)V
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "HWUI_IMAGE_FILTER"

    const-string/jumbo v2, "Impossible to kill animation! SemImageFilter object is not attached to view or invalid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/graphics/SemImageFilter$3;-><init>(Lcom/samsung/android/graphics/SemImageFilter;I)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->postDelayedAnimationTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static native native_addAnimation(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V
.end method

.method private static native native_copy(J)J
.end method

.method private static native native_getBitmapPixelColor(JLjava/lang/String;II)I
.end method

.method private static native native_getUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_getUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_getUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_getUpdateMargin(J[I)V
.end method

.method private static native native_getValue(JI)F
.end method

.method private static native native_init()J
.end method

.method private static native native_killAnimation(JI)V
.end method

.method private static native native_setFragmentShader(JLjava/lang/String;)V
.end method

.method private static native native_setSamplerBitmap(JLjava/lang/String;J)V
.end method

.method private static native native_setSamplerFiltering(JLjava/lang/String;I)V
.end method

.method private static native native_setSamplerWrap(JLjava/lang/String;I)V
.end method

.method private static native native_setUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformfDirect(JLjava/lang/String;[FIII)V
.end method

.method private static native native_setUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_setUniformiDirect(JLjava/lang/String;[IIII)V
.end method

.method private static native native_setUpdateMargin(JIIII)V
.end method

.method private static native native_setValue(JIF)V
.end method

.method private static native native_setVertexShader(JLjava/lang/String;)V
.end method

.method private postDelayedAnimationTask(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/graphics/SemImageFilter$1;-><init>(Lcom/samsung/android/graphics/SemImageFilter;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
    .locals 10

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "HWUI_IMAGE_FILTER"

    const-string/jumbo v2, "Impossible to add animation! SemImageFilter object is not attached to view or invalid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    sget v1, Lcom/samsung/android/graphics/SemImageFilter;->mGlobalAnimationId:I

    add-int/lit8 v5, v1, 0x1

    sput v5, Lcom/samsung/android/graphics/SemImageFilter;->mGlobalAnimationId:I

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemImageFilter$2;-><init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;IJJ)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    new-instance v1, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;-><init>(Lcom/samsung/android/graphics/SemImageFilter;I)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->postDelayedAnimationTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected clearAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/SemImageFilter;->native_copy(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected getBitmapPixelColor(Ljava/lang/String;II)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->native_getBitmapPixelColor(JLjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getFilterType()Lcom/samsung/android/graphics/SemImageFilter$FilterType;
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/samsung/android/graphics/SemCosineBlurImageFilter;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_7
    instance-of v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x31

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_8
    instance-of v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_9
    instance-of v0, p0, Lcom/samsung/android/graphics/SemMosaicImageFilter;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x35

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x37

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_d
    instance-of v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x38

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_e
    instance-of v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x39

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_f
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_10
    instance-of v0, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x41

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_11
    instance-of v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x42

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_12
    instance-of v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x43

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x44

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0

    :cond_14
    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    return-object v0
.end method

.method protected getListener()Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    return-object v0
.end method

.method public getNativeImageFilter()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/graphics/SemBlurFilter;

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    return v0

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    return v0

    :cond_2
    instance-of v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter;

    if-eqz v0, :cond_3

    const/16 v0, 0x33

    return v0

    :cond_3
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    if-eqz v0, :cond_4

    const/16 v0, 0x34

    return v0

    :cond_4
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;

    if-eqz v0, :cond_5

    const/16 v0, 0x37

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected getUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p2, v4, :cond_1

    if-gt p2, v5, :cond_1

    if-lt p3, v4, :cond_1

    if-gt p3, v5, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformMatrix(JLjava/lang/String;II[F)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUniformf(Ljava/lang/String;II[F)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-lez p3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformf(JLjava/lang/String;II[F)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUniformi(Ljava/lang/String;II[I)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-lez p3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformi(JLjava/lang/String;II[I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUpdateMargin([I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUpdateMargin(J[I)V

    return-void
.end method

.method protected getValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->native_getValue(JI)F

    move-result v0

    return v0
.end method

.method protected invalidateView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onAttachedToView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;->onAttachedToView()V

    :cond_0
    return-void
.end method

.method protected setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    :cond_1
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is unsupported format!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    if-nez p2, :cond_3

    :goto_0
    invoke-static {v2, v3, p1, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerBitmap(JLjava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativePtr()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-virtual {p2}, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->getFiltering()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerFiltering(JLjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method protected setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-virtual {p2}, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->getWrapping()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerWrap(JLjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method protected setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_INPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->getFiltering()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_OUTPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2}, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->getFiltering()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_setFragmentShader(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method protected setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    return-void
.end method

.method protected setSamplingRate(FF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p2, v4, :cond_1

    if-gt p2, v5, :cond_1

    if-lt p3, v4, :cond_1

    if-gt p3, v5, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformMatrix(JLjava/lang/String;II[F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-lez p3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformf(JLjava/lang/String;II[F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-lez p3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformi(JLjava/lang/String;II[I)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid arguments format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUpdateMargin(IIII)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUpdateMargin(JIIII)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method public setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setValue(JIF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemImageFilter has no native object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_setVertexShader(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    return-void
.end method

.method protected setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_USAGE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_SRC_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-static {p1}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->-get0(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_DST_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-static {p2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->-get0(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method public startAnimation(Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;
    .locals 13

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Animations have not been added or animations are being played"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;-><init>(Lcom/samsung/android/graphics/SemImageFilter;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    new-instance v11, Lcom/samsung/android/graphics/SemImageFilter$4;

    invoke-direct {v11, p0, p1}, Lcom/samsung/android/graphics/SemImageFilter$4;-><init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v9, v0, [Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    aget-object v8, v9, v10

    iput-object v11, v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    iget-object v12, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    invoke-virtual {v8}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;

    move-result-object v1

    iget-object v2, v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v3, v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    iget-wide v4, v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDuration:J

    iget-wide v6, v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDelay:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->add(Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationHandle:Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    return-object v0
.end method

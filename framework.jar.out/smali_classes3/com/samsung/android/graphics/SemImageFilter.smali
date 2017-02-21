.class public Lcom/samsung/android/graphics/SemImageFilter;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;,
        Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;,
        Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.ImageFilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.ImageFilter.log"

.field protected static final LOG_TAG:Ljava/lang/String; = "HWUI_IMAGE_FILTER"

.field public static final TYPE_BITMAP_COLOR:I = 0x34

.field public static final TYPE_BLENDING:I = 0x35

.field public static final TYPE_BLUR:I = 0x36

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field public static final TYPE_CUSTOM_FILTER:I = 0xee

.field public static final TYPE_DESATURATION:I = 0x11

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DISTORTION:I = 0x31

.field public static final TYPE_DROP_SHADOW:I = 0x37

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_GRADIENT_GAUSSIAN_BLUR:I = 0x39

.field public static final TYPE_KNITTED:I = 0x40

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_TILT_SHIFT:I = 0x38

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3

.field private static mGlobalAnimationId:I

.field protected static final sLogingEnabled:Z


# instance fields
.field protected mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

.field protected mNativeImageFilter:J

.field protected mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/graphics/SemImageFilter;->native_addAnimation(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V

    return-void
.end method

.method static synthetic -wrap1(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_killAnimation(JI)V

    return-void
.end method

.method static synthetic -wrap2(JLjava/lang/String;[FI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformfDirect(JLjava/lang/String;[FI)V

    return-void
.end method

.method static synthetic -wrap3(JLjava/lang/String;[II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformiDirect(JLjava/lang/String;[II)V

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-static {p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    iget-wide v0, p1, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->native_copy(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-void
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

.method public static createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;-><init>()V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;-><init>()V

    return-object v0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemZoomBlurFilter;-><init>()V

    return-object v0

    :sswitch_3
    new-instance v0, Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemCosineBlurFilter;-><init>()V

    return-object v0

    :sswitch_4
    new-instance v0, Lcom/samsung/android/graphics/SemSgiBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemSgiBlurFilter;-><init>()V

    return-object v0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/graphics/SemColorizeFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemColorizeFilter;-><init>()V

    return-object v0

    :sswitch_6
    new-instance v0, Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDesaturationFilter;-><init>()V

    return-object v0

    :sswitch_7
    new-instance v0, Lcom/samsung/android/graphics/SemColorClampFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemColorClampFilter;-><init>()V

    return-object v0

    :sswitch_8
    new-instance v0, Lcom/samsung/android/graphics/SemDistortionFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDistortionFilter;-><init>()V

    return-object v0

    :sswitch_9
    new-instance v0, Lcom/samsung/android/graphics/SemVignetteFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemVignetteFilter;-><init>()V

    return-object v0

    :sswitch_a
    new-instance v0, Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemMosaicFilter;-><init>()V

    return-object v0

    :sswitch_b
    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;-><init>()V

    return-object v0

    :sswitch_c
    new-instance v0, Lcom/samsung/android/graphics/SemBlendingFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBlendingFilter;-><init>()V

    return-object v0

    :sswitch_d
    new-instance v0, Lcom/samsung/android/graphics/SemBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemBlurFilter;-><init>()V

    return-object v0

    :sswitch_e
    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemDropShadowFilter;-><init>()V

    return-object v0

    :sswitch_f
    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;-><init>()V

    return-object v0

    :sswitch_10
    new-instance v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;-><init>()V

    return-object v0

    :sswitch_11
    new-instance v0, Lcom/samsung/android/graphics/SemKnittedFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemKnittedFilter;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x31 -> :sswitch_8
        0x32 -> :sswitch_9
        0x33 -> :sswitch_a
        0x34 -> :sswitch_b
        0x35 -> :sswitch_c
        0x36 -> :sswitch_d
        0x37 -> :sswitch_e
        0x38 -> :sswitch_f
        0x39 -> :sswitch_10
        0x40 -> :sswitch_11
    .end sparse-switch
.end method

.method private static native finalizer(J)V
.end method

.method private getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    :catch_1
    move-exception v2

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
.end method

.method private static native native_addAnimation(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V
.end method

.method private static native native_copy(J)J
.end method

.method private static native native_getSamplerNativeBitmap(JLjava/lang/String;)J
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

.method private static native native_init(I)J
.end method

.method private static native native_killAnimation(JI)V
.end method

.method private static native native_setFragmentShader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native native_setSamplerBitmap(JLjava/lang/String;J)V
.end method

.method private static native native_setSamplerFiltering(JLjava/lang/String;I)V
.end method

.method private static native native_setSamplerWrap(JLjava/lang/String;I)V
.end method

.method private static native native_setType(JI)V
.end method

.method private static native native_setUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformfDirect(JLjava/lang/String;[FI)V
.end method

.method private static native native_setUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_setUniformiDirect(JLjava/lang/String;[II)V
.end method

.method private static native native_setUpdateMargin(JIIII)V
.end method

.method private static native native_setValue(JIF)V
.end method

.method private static native native_setVertexShader(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addAnimation(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I
    .locals 10

    sget v0, Lcom/samsung/android/graphics/SemImageFilter;->mGlobalAnimationId:I

    add-int/lit8 v5, v0, 0x1

    sput v5, Lcom/samsung/android/graphics/SemImageFilter;->mGlobalAnimationId:I

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    new-instance v1, Lcom/samsung/android/graphics/SemImageFilter$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/graphics/SemImageFilter$1;-><init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;Landroid/animation/TimeInterpolator;IJJ)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemImageFilter has no native object."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

.method protected getListener()Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    return-object v0
.end method

.method protected getNativeBitmap(Ljava/lang/String;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_getSamplerNativeBitmap(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeImageFilter()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    instance-of v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    instance-of v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    instance-of v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    instance-of v0, p0, Lcom/samsung/android/graphics/SemColorizeFilter;

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    return v0

    :cond_5
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    return v0

    :cond_6
    instance-of v0, p0, Lcom/samsung/android/graphics/SemColorClampFilter;

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    return v0

    :cond_7
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;

    if-eqz v0, :cond_8

    const/16 v0, 0x31

    return v0

    :cond_8
    instance-of v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;

    if-eqz v0, :cond_9

    const/16 v0, 0x32

    return v0

    :cond_9
    instance-of v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter;

    if-eqz v0, :cond_a

    const/16 v0, 0x33

    return v0

    :cond_a
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    if-eqz v0, :cond_b

    const/16 v0, 0x34

    return v0

    :cond_b
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBlendingFilter;

    if-eqz v0, :cond_c

    const/16 v0, 0x35

    return v0

    :cond_c
    instance-of v0, p0, Lcom/samsung/android/graphics/SemBlurFilter;

    if-eqz v0, :cond_d

    const/16 v0, 0x36

    return v0

    :cond_d
    instance-of v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;

    if-eqz v0, :cond_e

    const/16 v0, 0x37

    return v0

    :cond_e
    instance-of v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;

    if-eqz v0, :cond_f

    const/16 v0, 0x38

    return v0

    :cond_f
    instance-of v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    if-eqz v0, :cond_10

    const/16 v0, 0x39

    return v0

    :cond_10
    instance-of v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;

    if-eqz v0, :cond_11

    const/16 v0, 0x40

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected getUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformMatrix(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected getUniformf(Ljava/lang/String;II[F)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformf(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected getUniformi(Ljava/lang/String;II[I)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUniformi(JLjava/lang/String;II[I)V

    :cond_0
    return-void
.end method

.method protected getUpdateMargin([I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_getUpdateMargin(J[I)V

    return-void
.end method

.method protected getValue(I)F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->native_getValue(JI)F

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

.method public killAnimation(I)V
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/graphics/SemImageFilter$2;-><init>(Lcom/samsung/android/graphics/SemImageFilter;I)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemImageFilter has no native object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAttachedToView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;->onAttachedToView()V

    :cond_0
    return-void
.end method

.method public onViewSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;->onViewSizeChanged()V

    :cond_0
    return-void
.end method

.method protected setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, p1, v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerBitmap(JLjava/lang/String;J)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativePtr()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected setBitmapFiltering(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerFiltering(JLjava/lang/String;I)V

    return-void
.end method

.method protected setBitmapWrap(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setSamplerWrap(JLjava/lang/String;I)V

    return-void
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setFragmentShader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setListener(Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    return-void
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformMatrix(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformf(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUniformi(JLjava/lang/String;II[I)V

    :cond_0
    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter;->native_setUpdateMargin(JIIII)V

    return-void
.end method

.method public setValue(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setValue(JIF)V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter;->invalidateView()V

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->native_setVertexShader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    return-void
.end method

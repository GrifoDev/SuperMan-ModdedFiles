.class public Lcom/android/server/fingerprint/FingerprintMaskView;
.super Ljava/lang/Object;
.source "FingerprintMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintMaskView$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintServiceMaskView"


# instance fields
.field private final FILE_PATH_HBM_GPIO:Ljava/lang/String;

.field private final FILE_PATH_MASK_HBM_INFO:Ljava/lang/String;

.field private final FLAG_HBM_ON:I

.field private final FLAG_MASK_ON:I

.field private final HBM_GPIO_OFF:Ljava/lang/String;

.field private final HBM_GPIO_ON:Ljava/lang/String;

.field private mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mBinder:Landroid/os/Binder;

.field private mContext:Landroid/content/Context;

.field private mCurrentMaskHbmInfo:I

.field private mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

.field private mFingerGuideImg:Landroid/widget/ImageView;

.field private mFingerGuideText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mIsVisible:Z

.field private mMaskOverlayView:Landroid/view/View;

.field private mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mOrientation:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSensorAreaHeight:I

.field private mSensorAreaRectangle:Landroid/view/View;

.field private mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mSensorAreaWidth:I

.field private mSensorMargin:I

.field private final mSetBrightnessRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private orientationScreen:I

.field private originSetValue:I

.field private preOrientationScreen:I


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerUnlockEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/fingerprint/FingerprintMaskView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSetBrightnessRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerprintRotationView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintMaskView;Ljava/io/File;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeFile(Ljava/io/File;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintMaskView;IF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintMaskView;->adjustAlpha(IF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintMaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintMaskView;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintMaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintMaskView;->restoreBrightness()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintMaskView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeMaskHbmStatus(IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v6, -0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->HBM_GPIO_ON:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->HBM_GPIO_OFF:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/lcd/panel/fingerprint"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->FILE_PATH_MASK_HBM_INFO:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/fingerprint/fingerprint/hbm"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->FILE_PATH_HBM_GPIO:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->FLAG_HBM_ON:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->FLAG_MASK_ON:I

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0xe0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaWidth:I

    const/16 v0, 0x86

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaHeight:I

    const/16 v0, 0xa6

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorMargin:I

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    iput v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z

    iput v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->preOrientationScreen:I

    iput v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->orientationScreen:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f4

    const v4, 0x8000d18

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f4

    const v4, 0x8000d08

    move v1, v6

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f4

    const v4, 0x8000d18

    move v1, v6

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintMaskView$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintMaskView$1;-><init>(Lcom/android/server/fingerprint/FingerprintMaskView;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSetBrightnessRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "DisplaySolution"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintMaskView;->readSensorConfig()V

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaWidth:I

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaHeight:I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorMargin:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->setSensorLayoutSpec(III)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    invoke-virtual {v0, v7}, Lcom/android/server/fingerprint/FingerprintRotationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v0, v7}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setVisibility(I)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method private adjustAlpha(IF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private getDrawbleResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "getDrawbleResource : No resource"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "failed to get resources"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method private static getPxValue(DLandroid/content/Context;)I
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p0

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FingerprintServiceMaskView"

    const-string/jumbo v4, "failed to get resources"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3
.end method

.method private getStringFpms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "failed to get resources"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private getXmlParserResource(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "layout"

    const-string/jumbo v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "getXmlParserResource : No resource"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "failed to get resources"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method private onConfigurationChanged()V
    .locals 3

    const-string/jumbo v0, "FingerprintServiceMaskView"

    const-string/jumbo v1, "onConfigurationChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->orientationScreen:I

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->preOrientationScreen:I

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->orientationScreen:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->orientationScreen:I

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->preOrientationScreen:I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->orientationScreen:I

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->setSensorAreaLayout(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private readBrightness(Ljava/io/File;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FingerprintServiceMaskView"

    const-string/jumbo v6, "readBrightness : failed to close file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v5, "FingerprintServiceMaskView"

    const-string/jumbo v6, "readBrightness : failed to read file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v5, "FingerprintServiceMaskView"

    const-string/jumbo v6, "readBrightness : failed to close file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v1

    const-string/jumbo v6, "FingerprintServiceMaskView"

    const-string/jumbo v7, "readBrightness : failed to close file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private readSensorConfig()V
    .locals 11

    const/4 v7, 0x0

    const-string/jumbo v0, "google_touch"

    if-eqz v0, :cond_2

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, v4, v7

    const-string/jumbo v9, "sensor_size="

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    const-string/jumbo v9, "sensor_size="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaWidth:I

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "FingerprintServiceMaskView"

    const-string/jumbo v10, "readSensorConfig : failed to read sensor config"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v9, "sensor_margin="

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_1
    const-string/jumbo v9, "sensor_margin="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v9, "FingerprintServiceMaskView"

    const-string/jumbo v10, "readSensorConfig : failed to read sensor config"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    sget-boolean v7, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "FingerprintServiceMaskView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sensor Config : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private declared-synchronized restoreBrightness()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintServiceMaskView"

    const-string/jumbo v1, "setLCDFlashMode false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mBinder:Landroid/os/Binder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeMaskHbmStatus(IZ)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/hbm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "0"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setFingerImageAnimation()V
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v2, "#23000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/server/fingerprint/FingerprintMaskView$4;

    invoke-direct {v2, p0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView$4;-><init>(Lcom/android/server/fingerprint/FingerprintMaskView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setSensorAreaLayout(I)V
    .locals 10

    const/16 v8, 0x51

    const/16 v6, 0x15

    const/16 v5, 0x13

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "sem_fp_rotation_view"

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->getXmlParserResource(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintRotationView;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const-string/jumbo v2, "sem_fp_sensor_area_view"

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->getXmlParserResource(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "sem_fp_imgFingerGuide"

    invoke-direct {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "sem_fp_sensor_area_view"

    invoke-direct {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "sem_fp_textFingerGuide"

    invoke-direct {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    const-string/jumbo v2, "spass_mask_standby_fingerprint"

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->getDrawbleResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    const-string/jumbo v2, "maskview_string"

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->getStringFpms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintMaskView$5;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintMaskView$5;-><init>(Lcom/android/server/fingerprint/FingerprintMaskView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaHeight:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    const-wide v8, 0x4034c00000000000L    # 20.75

    invoke-static {v8, v9, v6}, Lcom/android/server/fingerprint/FingerprintMaskView;->getPxValue(DLandroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintMaskView;->setFingerImageAnimation()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    invoke-virtual {v1, v7}, Lcom/android/server/fingerprint/FingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setY(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setX(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->originSetValue:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setX(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setSensorLayoutSpec(III)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "sem_fp_mask"

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->getXmlParserResource(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->preOrientationScreen:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->preOrientationScreen:I

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintMaskView;->setSensorAreaLayout(I)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    const-string/jumbo v4, "maskview_string"

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintMaskView;->getStringFpms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FingerprintServiceMaskView"

    const-string/jumbo v4, "failed to set layout resource"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeFile(Ljava/io/File;[B)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "writeFile : failed to close file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "writeFile : failed to write file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v4, "FingerprintServiceMaskView"

    const-string/jumbo v5, "writeFile : failed to close file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v4

    :catch_3
    move-exception v0

    const-string/jumbo v5, "FingerprintServiceMaskView"

    const-string/jumbo v6, "writeFile : failed to close file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private declared-synchronized writeMaskHbmStatus(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintServiceMaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeMaskHbmStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/fingerprint"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/fingerprint"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method dismiss()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "FingerprintServiceMaskView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismiss : REMOVE MASK VIEW : INVISIBLE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintMaskView$3;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintMaskView$3;-><init>(Lcom/android/server/fingerprint/FingerprintMaskView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintMaskView;->restoreBrightness()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->writeMaskHbmStatus(IZ)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->runUnlockAnimation()Z

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintServiceMaskView"

    const-string/jumbo v2, "dismiss : failed to dismiss mask view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method show()V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "FingerprintServiceMaskView"

    const-string/jumbo v2, "SHOW : ADD MASK VIEW : VISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setVisibility(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mCurrentMaskHbmInfo:I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    const-string/jumbo v2, "maskview_string"

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->getStringFpms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mIsVisible:Z

    new-instance v1, Lcom/android/server/fingerprint/FingerprintMaskView$2;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintMaskView$2;-><init>(Lcom/android/server/fingerprint/FingerprintMaskView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "FingerprintServiceMaskView"

    const-string/jumbo v2, "SHOW : UPDATE MASK VIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/FingerprintRotationView;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintRotationView;->invalidate()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintServiceMaskView"

    const-string/jumbo v2, "show : failed to show mask view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

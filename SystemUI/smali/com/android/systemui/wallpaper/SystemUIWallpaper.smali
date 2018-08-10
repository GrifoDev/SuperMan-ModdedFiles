.class public Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.super Landroid/view/View;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mDensity:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mFontScale:F

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field protected mResumed:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field protected mStatusBarHeight:I

.field protected mUnlockStarted:Z

.field protected mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/SystemUIWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string/jumbo v3, "SystemUIWallpaper"

    iput-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/SystemUIWallpaper;)V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mService:Landroid/app/IWallpaperManager;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mStatusBarHeight:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SystemUIWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mMetricsWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mMetricsHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onUnlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

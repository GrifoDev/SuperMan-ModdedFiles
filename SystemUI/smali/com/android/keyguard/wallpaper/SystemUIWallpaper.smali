.class public Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.super Landroid/view/View;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mDisplay:Landroid/view/Display;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field protected mResumed:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field protected mStatusBarHeight:I

.field protected mUnlockStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string/jumbo v3, "SystemUIWallpaper"

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mStatusBarHeight:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v0, v1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SystemUIWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mMetricsWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mMetricsHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    :cond_1
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

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onUnlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

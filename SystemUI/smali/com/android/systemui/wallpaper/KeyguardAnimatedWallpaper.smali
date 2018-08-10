.class public Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardAnimatedWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;
    }
.end annotation


# instance fields
.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mLastMobileKeyboardCoverd:I

.field private mPackageName:Ljava/lang/String;

.field private mScreenOn:Z

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    iput-object p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 11

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    const-string/jumbo v8, "KeyguardAnimatedWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "XmlName = animation;Default package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, -0x1000000

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    return-void
.end method

.method public getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    new-instance v10, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    invoke-direct {v10, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v1

    return-object v1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->stopAnimation()V

    return-void
.end method

.method public update()V
    .locals 3

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    const-string/jumbo v2, "update New AnimationBuilder wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

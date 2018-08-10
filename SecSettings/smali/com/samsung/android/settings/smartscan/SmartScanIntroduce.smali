.class public Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;
.super Landroid/app/Activity;
.source "SmartScanIntroduce.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final FontScale_LARGE:F

.field private isPaused:Z

.field private mBtnContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mContinueBtn:Landroid/widget/Button;

.field private mForFace:Z

.field private mFromSetupwizard:Z

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOriginFontScale:F

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSurface:Landroid/view/Surface;

.field private mSuwSetupBtn:Landroid/widget/LinearLayout;

.field private mSuwSkipBtn:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addVisibilityFlag(Landroid/view/View;I)V

    return-void

    :cond_0
    return-void
.end method

.method private addImmersiveFlagsToWindow(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private adjustFontScale()V
    .locals 7

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "font scale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    const-string/jumbo v4, "Font scale is bigger than Large! Change font scale"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private rollbackFontScale()V
    .locals 6

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rollback Font Scale to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/sem_intelligentscan_help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanIntroduce"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDisclaimer()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V

    return-void
.end method

.method private startSuwSmartScanDisclaimer()V
    .locals 4

    const-string/jumbo v2, "SsstSmartScanIntroduce"

    const-string/jumbo v3, "startSuwSmartScanDisclaimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanSuwDisclaimer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanIntroduce"

    const-string/jumbo v3, "startSuwSmartScanDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideSystemBars(Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x1202

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1602

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "Skip pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    :cond_2
    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "Set up pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v9, "SsstSmartScanIntroduce"

    const-string/jumbo v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    const v9, 0x7f0d02be

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v9, "fromSetupwizard"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-string/jumbo v9, "for_face"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mForFace:Z

    const-string/jumbo v9, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const v9, 0x7f0a07f7

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v9, 0x7f0a07f8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/TextureView;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v9, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v9}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700f1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int v6, v9, v10

    int-to-double v10, v6

    const-wide v12, 0x3fe0a3d700000000L    # 0.5199999809265137

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v10, v6

    const-wide v12, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v9, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v9, "SsstSmartScanIntroduce"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GuideVideo height is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    :cond_1
    const v9, 0x7f0a05eb

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    const v9, 0x7f0a01cc

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    const v9, 0x7f0a0137

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    const v9, 0x7f0a07df

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    const v9, 0x7f0a07b5

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0807c2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0807c2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x4

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setIndicatorTransparency()V

    :goto_2
    iget v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    invoke-static {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanDisclaimerConfirmedValue(Landroid/content/Context;I)I

    move-result v1

    const/4 v9, 0x1

    if-ge v1, v9, :cond_7

    iget-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startSuwSmartScanDisclaimer()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v10, v9

    const-wide v12, 0x3ff2147ae147ae14L    # 1.13

    div-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_2

    :cond_b
    new-instance v5, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->rollbackFontScale()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string/jumbo v1, "SsstSmartScanIntroduce"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "SsstSmartScanIntroduce"

    const-string/jumbo v2, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTransparency()V
    .locals 2

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

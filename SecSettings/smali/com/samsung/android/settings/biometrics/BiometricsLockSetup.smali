.class public Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;
.super Landroid/app/Activity;
.source "BiometricsLockSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButton:Landroid/widget/Button;

.field private static mWidth:I


# instance fields
.field private EVENT_ID_CONTINUE:I

.field private final FontScale_LARGE:F

.field private final Margin_Landscape:D

.field private final Margin_Portrait:D

.field private SCREEN_ID:I

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mContentsScroll:Landroid/widget/ScrollView;

.field private mContinueButton:Landroid/view/View;

.field private mContinueButtonContainer:Landroid/view/View;

.field private mDODisableCount:I

.field private mExistFace:Z

.field private mExistIris:Z

.field private mForFace:Z

.field private mForFingerprint:Z

.field private mForIris:Z

.field private mForSmartscan:Z

.field private mFromSetupwizard:Z

.field private mIsFromKnoxWorkspace:Z

.field private mNextButton:Landroid/view/View;

.field private mOrientation:I

.field private mOriginFontScale:F

.field private mPreviousButton:Landroid/view/View;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUserId:I

.field multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;


# direct methods
.method static synthetic -get0()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const-wide v0, 0x3fbf9db22d0e5604L    # 0.1235

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Portrait:D

    const-wide v0, 0x3fbe978d4fdf3b64L    # 0.1195

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Landscape:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addVisibilityFlag(Landroid/view/View;I)V

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v3, "BiometricsLockSetup"

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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "BiometricsLockSetup"

    const-string/jumbo v4, "Font scale is bigger than Large! Change font scale"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private disableStatusBarAndMultiWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "DO pwd changed, makes multi window disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string/jumbo v1, "DOPwdChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableStatusBarAndMultiWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "DO pwd change complete, set multi-window enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string/jumbo v1, "DOPwdChanged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNavigationBarHeight()I
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_1
    :goto_0
    const-string/jumbo v2, "BiometricsLockSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNavigationBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private getScreenHeight()D
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BiometricsLockSetup"

    const-string/jumbo v4, "DisplayMetrics is null!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_0
    const-string/jumbo v1, "BiometricsLockSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "heightPixel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getNavigationBarHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-double v2, v1

    return-wide v2
.end method

.method private getStatusBarHeight()I
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    const-string/jumbo v2, "BiometricsLockSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private rollbackFontScale()V
    .locals 6

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const-string/jumbo v3, "BiometricsLockSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rollback Font Scale to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setButtonSize()V
    .locals 3

    const v2, 0x7f0a01cd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    const v2, 0x7f0a00eb

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setDescMarginForLandscape()V
    .locals 4

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f0a00e7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setDescriptionString()V
    .locals 13

    const v12, 0x7f120ad1

    const v11, 0x7f1203aa

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v7, 0x7f0a00ea

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0a00e7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f0a00e3

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0a00e4

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0a00e5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v7, 0x7f0a00e6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f1203a5

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f1203a6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_2

    const v7, 0x7f120ad2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    if-eqz v0, :cond_3

    const v7, 0x7f120ad0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v7, :cond_12

    const v7, 0x7f1203a8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v7, :cond_a

    if-eqz v5, :cond_7

    const v7, 0x7f120b94

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v7, :cond_9

    const v7, 0x7f120b93

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    if-eqz v2, :cond_4

    const v7, 0x7f120b91

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_9
    const v7, 0x7f120b92

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_a
    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v7, :cond_e

    if-eqz v5, :cond_b

    const v7, 0x7f120387

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    if-eqz v0, :cond_c

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v7, :cond_d

    const v7, 0x7f120385

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_d
    const v7, 0x7f120384

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_e
    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v7, :cond_4

    if-eqz v5, :cond_f

    const v7, 0x7f1219ae

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    if-eqz v0, :cond_10

    const v7, 0x7f1219ac

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    if-eqz v2, :cond_4

    const v7, 0x7f1219ad

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_11

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_12
    const v7, 0x7f1203a7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private setPhoneMarginToLayout()V
    .locals 8

    const v3, 0x7f0a00ec

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    const v3, 0x7f0a01cb

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "BiometricsLockSetup"

    const-string/jumbo v4, "Scroll or ButtonContainer is null! We couldn\'t set the margin value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getScreenHeight()D

    move-result-wide v6

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-wide v4, 0x3fbe978d4fdf3b64L    # 0.1195

    :goto_0
    mul-double/2addr v4, v6

    double-to-int v1, v4

    const-string/jumbo v3, "BiometricsLockSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "margin value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getStatusBarHeight()I

    move-result v3

    :goto_1
    add-int/2addr v3, v1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContentsScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-nez v3, :cond_2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const-wide v4, 0x3fbf9db22d0e5604L    # 0.1235

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
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
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "Previous button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "Next button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a05a2 -> :sswitch_1
        0x7f0a066e -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string/jumbo v3, "BiometricsLockSetup"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->adjustFontScale()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_face"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_iris"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_fingerprint"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "for_smartscan"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "existFace"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "existIris"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fromSetupwizard"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v3, :cond_1

    const v0, 0x7f120379

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v3, :cond_2

    const v0, 0x7f12037a

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v3, :cond_3

    const v0, 0x7f12037b

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v3, :cond_5

    :cond_4
    const-string/jumbo v3, "BiometricsLockSetup"

    invoke-static {p0, v0, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    :cond_6
    :goto_0
    const v3, 0x7f0d02b4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v3, :cond_d

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->hideSystemBars(Landroid/view/Window;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    :goto_1
    const v3, 0x7f0a01cb

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    const v3, 0x7f0a01cd

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButton:Landroid/view/View;

    const v3, 0x7f0a0137

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    const v3, 0x7f0a066e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    const v3, 0x7f0a05a2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "is_knox"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    return-void

    :cond_b
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0230

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto/16 :goto_0

    :cond_c
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto/16 :goto_1

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->rollbackFontScale()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->enableStatusBarAndMultiWindow()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "BiometricsLockSetup"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setButtonSize()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setDescMarginForLandscape()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setPhoneMarginToLayout()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setDescriptionString()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->disableStatusBarAndMultiWindow()V

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string/jumbo v1, "BiometricsLockSetup"

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

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v1, "BiometricsLockSetup"

    const-string/jumbo v2, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->hideSystemBars(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    :cond_1
    return-void
.end method

.method public setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3402

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

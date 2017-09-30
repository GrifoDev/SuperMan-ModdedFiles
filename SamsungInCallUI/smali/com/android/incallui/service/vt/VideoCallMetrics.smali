.class public Lcom/android/incallui/service/vt/VideoCallMetrics;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallNotifier$InCallContentViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallMetrics$Position;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$VideoAlign;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;
    }
.end annotation


# static fields
.field public static final CALL_STATE_DIVIDER_PX:I = 0x2

.field public static final DEX_MULTI_WINDOW_MAX_HEIGHT:I = 0x237

.field public static final DEX_MULTI_WINDOW_MAX_WIDTH:I = 0x13f

.field public static final DEX_TABLET_UX_MIN_WIDTH:I = 0x258

.field private static final TAG:Ljava/lang/String; = "VideoCallMetrics - "


# instance fields
.field public button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

.field public callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

.field public density:F

.field public heightPixels:I

.field public isLeftHandRotation:Z

.field public isRightHandRotation:Z

.field private mDisplay:Landroid/view/Display;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field public mIsDexMode:Z

.field public video:Lcom/android/incallui/service/vt/VideoMetrics;

.field public widthPixels:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsDexMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation:Z

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation:Z

    new-instance v0, Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCardMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    new-instance v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoButtonMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onContentViewChanged(II)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addInCallContentViewListener(Lcom/android/incallui/InCallNotifier$InCallContentViewListener;)V

    return-void
.end method

.method private getActivityContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContentViewChanged(II)V
    .locals 1

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const-string v0, "VideoCallMetrics - onContentViewChanged - Invalid size"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayHeight()I

    move-result p2

    :cond_3
    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    goto :goto_0
.end method

.method public static toString(Lcom/android/incallui/service/vt/VideoCallMetrics;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " VideoMetrics{NULL}"

    goto :goto_0
.end method

.method private update()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsDexMode:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation:Z

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/service/vt/VideoCardMetrics;->update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/service/vt/VideoButtonMetrics;->update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    return-void
.end method


# virtual methods
.method public canUseNavigationBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->canUseNavigationBar()Z

    move-result v0

    return v0
.end method

.method public getContentViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDimension(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 4

    const-string v0, " NavigationBar{canUse=%s, isShowing=%s,  Height=%s} Statusbar{ Height=%s} "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->canUseNavigationBar()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isNavigationBarVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getPixelsFromDP(I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRatePercent(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v0

    return v0
.end method

.method public getRatePermil(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePermil(F)F

    move-result v0

    return v0
.end method

.method public getVideoUXMode()I
    .locals 4

    sget v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->PHONE:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->TABLET:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->MULTIWINDOW:I

    or-int/2addr v0, v2

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->DEX:I

    or-int/2addr v0, v2

    if-eqz v1, :cond_5

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x13f

    if-le v2, v3, :cond_5

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v2, 0x237

    if-le v1, v2, :cond_5

    sget v1, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->MULTIWINDOW:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public hasMultiWindowType(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->access$000(I)Z

    move-result v0

    return v0
.end method

.method public hasNavigationBarZone()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->canUseNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceLandScape()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeformMultiWindow()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftHandRotation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNavigationBarInLandscape()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneLandscapeType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneLandscapeType(I)Z

    move-result v0

    return v0
.end method

.method public isPhoneLandscapeType(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->isPhoneType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhonePortraitType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v0

    return v0
.end method

.method public isPhonePortraitType(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->isPhoneType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneVideoUX()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasTabletType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightHandRotation()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToHideIndicatorArea()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisplayRotationChanged(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    move v2, v0

    :goto_0
    if-ne p1, v0, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->canUseNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation:Z

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - onDisplayRotationChanged is changed rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInMultiWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onInCallContentViewChange(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - onInCallContentViewChange - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onContentViewChanged(II)V

    return-void
.end method

.method public setPeerDimension(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->setPeerDimension(Lcom/android/incallui/service/vt/VideoDimension;)V

    return-void
.end method

.method public setPreviewDimension(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->setPreviewDimension(Lcom/android/incallui/service/vt/VideoDimension;)V

    return-void
.end method

.method public tearDown()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallNotifier;->notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeInCallContentViewListener(Lcom/android/incallui/InCallNotifier$InCallContentViewListener;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " VideoCallMetrics{%d X %d, Display[%d X %d, rotation=%d], DexMode=%s, isLeftHandRotation=%s, VideoUX=%s} "

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsDexMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

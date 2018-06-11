.class public Lcom/android/systemui/qs/bar/BrightnessBar;
.super Lcom/android/systemui/qs/bar/QSBarItem;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/BrightnessBar$1;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_AUTO:Ljava/lang/String; = "brightness_auto"

.field public static final BRIGHTNESS_BAR_NAME:Ljava/lang/String; = "Brightness"

.field public static final BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field public static final DISPLAY_OUTDOOR_MODE:Ljava/lang/String; = "display_outdoor_mode"


# instance fields
.field private final mAutoBrightnessSettingsObserver:Landroid/database/ContentObserver;

.field mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessBar:Landroid/widget/LinearLayout;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

.field private mBrightnessDetailIcon:Landroid/widget/ImageView;

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

.field private mContext:Landroid/content/Context;

.field private mIsAutoBrightness:Ljava/lang/Boolean;

.field private mIsBrightnessOnTop:Ljava/lang/Boolean;

.field private mIsDetail:Ljava/lang/Boolean;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/bar/BrightnessBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/bar/BrightnessBar;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAutoBrightness:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/bar/BrightnessBar;Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/bar/BrightnessBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAutoBrightness:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/bar/BrightnessBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsDetail:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/BrightnessBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setBrightnessOnTopControl(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsDetail:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mAutoBrightnessSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BrightnessBar()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mAutoBrightnessSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "brightness_auto"

    aput-object v4, v3, v2

    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "brightness_on_top"

    aput-object v4, v3, v2

    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "brightness_on_top"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private initBrightnessDetailViews()V
    .locals 3

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    sget v2, Lcom/android/mwilky/Renovate;->mQsSliderIconColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBrightnessOnTopControl(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "brightness_on_top"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateQSColoringResources()V
    .locals 3

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSliderView;->updateResources()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSliderView;->getMirrorView()Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSliderView;->updateResources()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mAutoBrightnessSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBrightnessOnTopAvailable()Z
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public initBarViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0130

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarItemView:Landroid/view/View;

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessIcon:Landroid/widget/ImageView;

    sget v2, Lcom/android/mwilky/Renovate;->mQsSliderIconColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetailViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->getQSPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnTop()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->initBarViews()V

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateQSColoringResources()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->removeAllViews()V

    return-void
.end method

.method public onReserveMaxModeChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "brightness_on_top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBrightnessOnTop() : newValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isBrightnessOnTop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    const-string/jumbo v2, "Brightness"

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->applyBarOnTopList(Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoBrightnessControl(Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoBrightnessControl() : auto Brightness = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    move v3, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/settings/BrightnessController;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return v6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_outdoor_mode"

    if-eqz p1, :cond_3

    move v2, v6

    :cond_3
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onFinishInflate()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setPosition(F)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_0
.end method

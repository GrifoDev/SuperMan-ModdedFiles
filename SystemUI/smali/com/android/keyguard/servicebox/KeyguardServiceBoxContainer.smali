.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/KeyguardStatusBase;
.implements Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;
    }
.end annotation


# static fields
.field private static final DENSITY_MAP:[[I

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static mIsMKeyboardConnected:Z

.field private static sIsCovered:Z


# instance fields
.field private mAnimatorSetLeft:Landroid/animation/AnimatorSet;

.field private mAnimatorSetRight:Landroid/animation/AnimatorSet;

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field private mCurrentLayoutDirection:I

.field private mDensityDpi:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHasCMAS:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mIsExpanded:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

.field private mReadyToAnimation:Z

.field private mServiceBoxExpandedHeight:I

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxMKCoverHeight:I

.field private mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private mServiceBoxSCoverHeight:I

.field private mServiceBoxScailingView:Landroid/view/View;

.field private mServiceBoxSmallHeight:I

.field private mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->playArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateChildViewsLook()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    new-array v0, v7, [[I

    const/16 v1, 0x118

    const/16 v2, 0x140

    const/16 v3, 0x168

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1a4

    const/16 v2, 0x1e0

    const/16 v3, 0x21c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x230

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    return-void
.end method

.method private attachCalendarPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_calendar"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_today_main_small:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachClockPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_clock"

    sget v2, Lcom/android/keyguard/R$layout;->keyguard_clock_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachMusicPage()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_music"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_music_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCoverContainerHeight()I
    .locals 3

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLargeOrSmallMark()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getLargeOrSmallMark()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v4, :cond_2

    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private hideArrow()V
    .locals 6

    const-wide/16 v4, 0x43

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetLeft:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetRight:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private initDimens()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_scover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_mkcover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    return-void
.end method

.method public static isSViewCovered()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    return v0
.end method

.method private playArrowAnimation()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetLeft:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetRight:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetLeft:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetRight:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private reissueAllPages()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->clear()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachClockPage()V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachMusicPage()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachCalendarPage()V

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setMobileKeyboardState(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileKeyboardState() isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setMobileKeyboardState(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void
.end method

.method private updateChildViewsLook()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateChildViewsLook()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateChildViewsLook()V

    return-void
.end method

.method private updateContainerLayout()V
    .locals 6

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCoverContainerHeight()I

    move-result v0

    const v2, 0x3f333333    # 0.7f

    :cond_0
    :goto_0
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContainerLayout() h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public dismissServiceBox(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissServiceBox pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->hideArrow()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isContainerExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_2

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    :cond_0
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_3

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    sget v2, Lcom/android/keyguard/R$id;->keyguard_servicebox_viewpager:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    sget v2, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    sget v2, Lcom/android/keyguard/R$id;->keyguard_servicebox_scailing_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowLeft:Landroid/widget/ImageView;

    sget v2, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$anim;->servicebox_container_affordance_arrow_left:I

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetLeft:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$anim;->servicebox_container_affordance_arrow_right:I

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetRight:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetLeft:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mAnimatorSetRight:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->playArrowAnimation()V

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    new-instance v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    sget-boolean v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "refreshTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->refreshViews()V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverState() isCovered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sIsCovered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    if-eq v0, p1, :cond_1

    sput-boolean p1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setCoverState(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsCovered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox item pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    const-string/jumbo v5, "showServiceBox!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v3, v4, v7, v5}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZZ)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v7}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v7}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

.method public updateCMAS(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHasCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateCMAS(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(Z)V

    :cond_0
    return-void
.end method

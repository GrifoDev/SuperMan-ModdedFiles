.class public Lcom/android/systemui/qs/bar/HandlerBar;
.super Lcom/android/systemui/qs/bar/QSBarItem;
.source "HandlerBar.java"


# static fields
.field private static final HANDLER_ANIMATION_DURATION:I = 0x1f4

.field private static final HANDLER_ANIMATION_REPEAT_COUNT:I = 0x4

.field private static final HANDLER_ANIMATION_START_OFFSET:I = 0x96

.field private static final PREF_KEY:Ljava/lang/String; = "expanded"

.field private static final TYPE_ANIMATION_END:I = 0x1

.field private static final TYPE_DEFAULT:I


# instance fields
.field private mArrowAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

.field private mContext:Landroid/content/Context;

.field private mHandlerArrowImage:Landroid/widget/ImageView;

.field private mHandlerArrowLayout:Landroid/widget/FrameLayout;

.field private mHandlerBottomArrowImage:Landroid/widget/ImageView;

.field private mHandlerImage:Landroid/widget/ImageView;

.field private mHasBeenExpanded:Z

.field private mIsAnimationCanceled:Z

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStartOffsetSetting:Z

.field private mStatusBarState:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/bar/HandlerBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mIsAnimationCanceled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/bar/HandlerBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStartOffsetSetting:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/bar/HandlerBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStartOffsetSetting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/HandlerBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/HandlerBar;->updateViewsVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStartOffsetSetting:Z

    iput-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "expanded"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mIsAnimationCanceled:Z

    return-void
.end method

.method private cancelHandlerAnimation()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStartOffsetSetting:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->updateViewsVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mIsAnimationCanceled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getArrowAlphaAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    return-object v0
.end method

.method private setBarState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->updateViewsVisibility(I)V

    :cond_0
    return-void
.end method

.method private startHandlerAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->getArrowAlphaAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/systemui/qs/bar/HandlerBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/HandlerBar$1;-><init>(Lcom/android/systemui/qs/bar/HandlerBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->getArrowAlphaAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/systemui/qs/bar/HandlerBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/HandlerBar$2;-><init>(Lcom/android/systemui/qs/bar/HandlerBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
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

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private updateResources()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f06016e

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private updateViewsVisibility(I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/HandlerBar;->updateViewsVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStartOffsetSetting:Z

    iput-object v4, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v4, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBottomArrowAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070505

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initBarViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mBarItemView:Landroid/view/View;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01fb

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerBottomArrowImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->updateResources()V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->initBarViews()V

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->updateQSColoringResources()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->removeAllViews()V

    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mIsAnimationCanceled:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->startHandlerAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->cancelHandlerAnimation()V

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBarState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "expanded"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHasBeenExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->cancelHandlerAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mHandlerArrowLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/HandlerBar;->setBarState(I)V

    :cond_2
    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewQuickSetting.java"


# instance fields
.field private mCurrentDisplaySize:Landroid/graphics/Point;

.field private mCustom:Landroid/view/animation/Interpolator;

.field private mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

.field private mDeskQuickSettingView:Landroid/view/ViewGroup;

.field private mElastic50:Landroid/view/animation/ElasticCustom;

.field private mHandler:Landroid/os/Handler;

.field private mIsCollapsing:Z

.field private mLocationOnScreen:[I

.field private mPosition:I

.field private mSineInOut70:Lcom/samsung/android/view/animation/SineInOut70;

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskQuickSettingViewInner(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mStatusBarState:I

    return-void
.end method

.method private collapse()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setVisibility(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mIsCollapsing:Z

    return-void
.end method

.method private collapseDeskQuickSettingViewInner(F)V
    .locals 3

    const v2, 0x1000010

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    const v1, 0x1000011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapse()V

    return-void
.end method

.method private expand()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setVisibility(I)V

    return-void
.end method

.method private getDeskQuickSettingViewCollapseFrom()F
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskQuickSettingViewCollapseTo()F
    .locals 3

    const v2, 0x7f070164

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskQuickSettingViewExpandFrom()F
    .locals 3

    const v2, 0x7f070164

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskQuickSettingViewExpandTo()F
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDeskPanelViewQuickSettingArea(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    aget v2, v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mLocationOnScreen:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setAnimationInterpolator()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut70:Lcom/samsung/android/view/animation/SineInOut70;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCustom:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mElastic50:Landroid/view/animation/ElasticCustom;

    return-void
.end method


# virtual methods
.method public collapseAll(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskPanelViewQuickSetting(Z)V

    return-void
.end method

.method public collapseDeskPanelViewQuickSetting(Z)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mIsCollapsing:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mIsCollapsing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewCollapseFrom()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewCollapseTo()F

    move-result v3

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v6, "y"

    new-array v7, v10, [F

    aput v2, v7, v8

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v4, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;F)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskQuickSettingViewInner(F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public expandDeskPanelViewQuickSetting(Z)V
    .locals 11

    const v7, 0x1000011

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mIsCollapsing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->expand()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    const v6, 0x1000010

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewExpandFrom()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewExpandTo()F

    move-result v3

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    aput v2, v7, v8

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v4, v5, v8

    aput-object v0, v5, v10

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;F)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDeskPanelViewQuickSettingContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDeskPanelViewQuickSettingVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyDeskPanelPositionChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mPosition:I

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setAnimationInterpolator()V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->isDeskPanelViewQuickSettingArea(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isTaskBarArea(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseAll(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public replaceDeskPanelViewQuickSetting(Z)V
    .locals 14

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mIsCollapsing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewCollapseFrom()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewCollapseTo()F

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewExpandFrom()F

    move-result v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingViewExpandTo()F

    move-result v8

    if-eqz p1, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v11, "y"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v2, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0x96

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x64

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v11, "y"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v8, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v10, 0x96

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v10, 0x96

    invoke-virtual {v6, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setCurrentDisplaySize(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mCurrentDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public setStatusBarState(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mStatusBarState:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseAll(Z)V

    :cond_0
    return-void
.end method

.method public toggleDeskPanelViewQuickSetting(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->mDeskQuickSettingView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskPanelViewQuickSetting(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->expandDeskPanelViewQuickSetting(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->expandDeskPanelViewQuickSetting(Z)V

    goto :goto_0
.end method

.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/views/PluginRecentsView;


# instance fields
.field private mAwaitingFirstLayout:Z

.field private final mBackgroundScrim:Landroid/graphics/drawable/Drawable;

.field private mBackgroundScrimAnimator:Landroid/animation/Animator;

.field private mBlockTwiceTouchOnCloseAllButton:Z

.field private mButtonsContainer:Landroid/view/ViewGroup;

.field private mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

.field private mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mButtonsTouchListener:Landroid/view/View$OnTouchListener;

.field private mCloseAllButton:Landroid/widget/Button;

.field private mCloseAllContainer:Landroid/view/ViewGroup;

.field private mCloseAllTextSize:I

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mHandler:Landroid/os/Handler;

.field private mLastTaskLaunchedWasFreeform:Z

.field private mLockEditCancelButton:Landroid/widget/Button;

.field private mLockEditDoneButton:Landroid/widget/Button;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreMenu:Landroid/widget/PopupMenu;

.field private mMoreMenuItemLock:Landroid/view/MenuItem;

.field private mMoreMenuLayoutType:Landroid/view/MenuItem;

.field private mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

.field private final mScrimAlpha:F

.field private mStackActionButton:Landroid/widget/TextView;

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

.field private mTextShadowColor:I

.field private mTextShadowDistance:F

.field private mTextShadowSize:F

.field private mToggleButton:Landroid/widget/Button;

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/ITaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v2, :cond_0

    const v2, 0x3ee66666    # 0.45f

    :goto_0
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0170

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowDistance:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowColor:I

    return-void

    :cond_0
    const v2, 0x3ea8f5c3    # 0.33f

    goto :goto_0
.end method

.method private animateBackgroundScrim(FI)V
    .locals 6

    const/high16 v4, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    mul-float v2, p1, v4

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    if-le v1, v0, :cond_0

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private finishTypeSwitchExitAnimation()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/recents/views/RecentsView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v3, 0x0

    aget v1, v0, v3

    const/4 v3, 0x1

    aget v2, v0, v3

    new-instance v3, Landroid/graphics/Rect;

    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .locals 0

    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_RecentsView_64617(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "RecentsView"

    const-string/jumbo v1, "onClick :: btnDone"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v3, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_RecentsView_65022(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "RecentsView"

    const-string/jumbo v1, "onClick :: btnCancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v1, v2, v2}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private rebuildMenuItem(Z)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f12097e

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    iput-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    iput-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isEmergencyModeEnabled()Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_1
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    const v3, 0x7f120978

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    :cond_2
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->isListTypeLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "com.android.settings"

    invoke-static {v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f12097b

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    :cond_4
    const-string/jumbo v3, "com.samsung.helphub"

    invoke-static {v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f120977

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    :cond_5
    const-string/jumbo v3, "com.samsung.android.voc"

    invoke-static {v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f120976

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    :cond_6
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    :cond_7
    const v3, 0x7f12097c

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    goto :goto_0

    :cond_8
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletTypeLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    goto :goto_0

    :cond_9
    const v3, 0x7f12097d

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private showStackActionButton(IZ)V
    .locals 0

    return-void
.end method

.method private updateButtonContainer(Z)V
    .locals 8

    const v7, 0x7f0a0411

    const v6, 0x7f0a0410

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v5, 0x7f0100b8

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v5, 0x7f0100b0

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {v5, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private updateCustomRippleEffect(ZLandroid/view/View;FF)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    :goto_0
    aget v3, v1, v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int v5, v0, v2

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    cmpg-float v3, p3, v8

    if-gez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float p3, v3, v9

    :cond_0
    cmpg-float v3, p4, v8

    if-gez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float p4, v3, v9

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    aget v4, v1, v7

    int-to-float v4, v4

    add-float/2addr v4, p3

    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    add-float/2addr v5, p4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    const v4, 0x10100a7

    const v5, 0x101009e

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    new-array v4, v7, [I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    goto :goto_1
.end method

.method private updateRecentsButtonsColor()V
    .locals 5

    const v4, 0x7f06019e

    const v3, 0x7f06019d

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    const v2, 0x7f080573

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V
    .locals 16

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_0
    if-ltz v13, :cond_6

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v1, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    if-eqz p1, :cond_0

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    :goto_1
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    move/from16 v11, p3

    :goto_2
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_4

    move/from16 v12, p4

    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    :goto_4
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_2

    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xfa

    move-object v3, v1

    move v5, v11

    move v6, v12

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_1

    :cond_3
    iget v11, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    goto :goto_2

    :cond_4
    iget v12, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V
    .locals 9

    const/16 v4, 0xfa

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    if-eqz p1, :cond_2

    if-eq p1, v8, :cond_4

    :cond_2
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move v3, v2

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eq p3, v6, :cond_6

    move v2, p3

    :goto_1
    if-eq p4, v6, :cond_7

    move v3, p4

    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v8, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getPreFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v1

    :goto_3
    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-eq v5, p0, :cond_5

    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_5
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_0

    :cond_6
    iget v2, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    goto :goto_1

    :cond_7
    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v8, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method craeteTaskStackView(I)Lcom/android/systemui/recents/views/ITaskStackView;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2, v1, p2}, Lcom/android/systemui/recents/views/ITaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "N"

    goto :goto_0
.end method

.method public getBackgroundScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCloseAllButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLockEditCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLockEditDoneButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public getTaskRect(Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;)Landroid/graphics/Rect;
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTaskStackView()Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method public bridge synthetic getTaskStackView()Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackView()Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    return-object v0
.end method

.method public getTaskViewsSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getToggleButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public hideMoreMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public isLastTaskLaunchedFreeform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_31280(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_56533(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    const-string/jumbo v1, "RecentsView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(MoreButton) :: mMoreMenuItemLock="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    if-nez v0, :cond_7

    const-string/jumbo v0, "none"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuItemLock:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "visible"

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "invisible"

    goto :goto_2
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_58152(Landroid/view/View;)Z
    .locals 8

    const/16 v7, 0x33

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12097a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v5, :cond_0

    aget v2, v0, v6

    aget v3, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v7, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v5

    :cond_0
    aget v2, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v7, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_59187(Landroid/view/MenuItem;)Z
    .locals 8

    const v7, 0x7f12097e

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "RecentsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuItemClick :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f120978

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v6, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v2, v5, v5}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v4

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f12097b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    invoke-direct {v2, v6}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f120977

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.helphub"

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v4

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f120976

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.voc"

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v4

    :cond_3
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v1, :cond_a

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v4, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    if-nez v0, :cond_9

    const-string/jumbo v1, "Thumbnail"

    :goto_1
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v4

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    const v2, 0x7f12097c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenuLayoutType:Landroid/view/MenuItem;

    const v2, 0x7f12097d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "List"

    goto :goto_1

    :cond_a
    return v5
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_66479(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateCustomRippleEffect(ZLandroid/view/View;FF)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateCustomRippleEffect(ZLandroid/view/View;FF)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_66993(Landroid/view/View;Z)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p1, v1, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateCustomRippleEffect(ZLandroid/view/View;FF)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsView_86016()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->finishTypeSwitchExitAnimation()V

    return-void
.end method

.method public launchFocusedTask(I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0, v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v5
.end method

.method public launchPreviousTask()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v6

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0, v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZI)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v6

    :cond_1
    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/ITaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->finishTypeSwitchExitAnimation()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 8

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(IILandroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    new-instance v5, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " on split ui"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10e

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->finishTypeSwitchExitAnimation()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    iget-boolean v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->snapViewRequested:Z

    iget-boolean v8, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    iget-boolean v9, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenRatioChangeRequested:Z

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;ZIZZZ)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->rebuildMenuItem(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v2, v1}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->willExit:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->updateButtonContainer(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iput-boolean v3, v5, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    if-nez v5, :cond_2

    move v2, v3

    :goto_1
    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput v2, v5, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v1, v7, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->requestMaxAspectPackage(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;

    if-ne v2, v3, :cond_4

    :goto_3
    invoke-direct {v6, v1, v3}, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x190

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;)V
    .locals 1

    const v0, 0x7f120961

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/InvertColorEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsColor()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;)V
    .locals 9

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "RecentsView"

    const-string/jumbo v4, "onBusEvent(LayoutTypeChangeEvent)\n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v3}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v3}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mPrevStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v3, v0}, Lcom/android/systemui/recents/views/ITaskStackView;->startLayoutTypeChangeExitAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, p1, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;->targetLayoutType:I

    iput v4, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getLayoutPreference()Lcom/android/systemui/recents/model/LayoutTypePreference;

    move-result-object v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;->targetLayoutType:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/model/LayoutTypePreference;->saveLayoutType(II)V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v3, :cond_0

    iget v2, p1, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;->targetLayoutType:I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->craeteTaskStackView(I)Lcom/android/systemui/recents/views/ITaskStackView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/systemui/recents/views/ITaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2, v8}, Lcom/android/systemui/recents/views/ITaskStackView;->onReload(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2, v1, v8}, Lcom/android/systemui/recents/views/ITaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x2

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->focus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->leftward:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_5

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_6

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0100b8

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0100b0

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasOnlyLockedTasks()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_2
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->focus:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->show:Z

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v8, :cond_5

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->show:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->show:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b9

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->show:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b1

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 14

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_1

    iget-object v13, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v13, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-array v1, v5, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v13, v1, v2

    move-object v0, p0

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_0

    move-object v6, p0

    move v8, v5

    move v9, v3

    move v10, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-object v0, p0

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    move-object v6, p0

    move v8, v5

    move v9, v3

    move v10, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v4

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v6, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v7, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v3, p0

    move v8, v5

    move v9, v5

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v6, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v7, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    move-object v3, p0

    move v8, v5

    move v9, v5

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v5, v15, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(IILandroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v18, Lcom/android/systemui/recents/views/RecentsView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    new-instance v5, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10e

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v8, 0x86

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v5, v6, v8, v9}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V

    invoke-virtual {v13, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v1, v6}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v6}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v2, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RecentsView"

    const-string/jumbo v1, "onInterceptTouchEvent() - isSwitchAnimating"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, p3

    invoke-virtual {v7, p2, p3, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v8

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v6, v7, v8

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p2

    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p3

    sub-int v8, p5, p3

    sub-int/2addr v8, v6

    sub-int/2addr v8, v0

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v2, v7, v8

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    iget-boolean v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    :goto_0
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->updateButtonContainer(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07054c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v5, v0, v5, v5}, Lcom/android/systemui/recents/views/RecentsView;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v3}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v3}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsContainerLayout()V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    if-nez v3, :cond_0

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/systemui/recents/views/RecentsView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onReload(ZZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->craeteTaskStackView(I)Lcom/android/systemui/recents/views/ITaskStackView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/systemui/recents/views/ITaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    :cond_0
    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/RecentsView;->rebuildMenuItem(Z)V

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v2, p1}, Lcom/android/systemui/recents/views/ITaskStackView;->onReload(Z)V

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    const v6, 0x7f080571

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a0412

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a0416

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a00b7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12097a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Landroid/widget/PopupMenu;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setGravity(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a00b5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$1;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    const v3, 0x7f08058a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainerBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$5;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$3;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mToggleButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mLockEditCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsFoucsChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsColor()V

    return-void
.end method

.method public showEmptyView(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-interface {v1}, Lcom/android/systemui/recents/views/ITaskStackView;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f120961

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019e

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019d

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowDistance:F

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowColor:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public showMenuIfNeeded()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public updateRecentsContainerLayout()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-eq v3, v6, :cond_0

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-nez v3, :cond_4

    if-ne v1, v7, :cond_4

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllTextSize:I

    if-eq v3, v2, :cond_1

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllTextSize:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/widget/Button;

    int-to-float v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-eq v3, v6, :cond_7

    if-ne v1, v7, :cond_7

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_7
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method public updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/ITaskStackView;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/recents/views/ITaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f120961

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget-object v0, v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    if-ne v0, p1, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformState()Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget-object v0, v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    if-ne v0, p1, :cond_2

    return v4

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3
.end method

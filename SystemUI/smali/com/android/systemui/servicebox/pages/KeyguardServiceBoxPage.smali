.class public abstract Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;,
        Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$2;,
        Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachPageHandler:Landroid/os/Handler;

.field private mCurrentOrientation:I

.field private mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mIsAnimating:Z

.field private mIsBigView:Z

.field protected mIsCovered:Z

.field private mIsLockStarScaledPageShowing:Z

.field protected mIsMKeyboardConnected:Z

.field protected mIsReservedToTransition:Z

.field private mIsRotationEnabled:Z

.field protected mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockStarPagePosX:I

.field private mLockStarPagePosY:I

.field protected mPageType:I

.field protected mRes:Landroid/content/res/Resources;

.field protected mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field protected mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowLockStarServiceBoxInProgress:Z

.field protected mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    iput v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    iput v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$1;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$2;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$3;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$3;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-void
.end method

.method private dismissLockStarServiceBox()V
    .locals 10

    const-wide/16 v8, 0x14d

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dismissLockStarServiceBox() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$6;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$6;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    iput v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    new-instance v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private setBottomMarginByClockScaleMode(Landroid/view/View;I)V
    .locals 6

    const v4, 0x7f070632

    const v5, 0x7f0701fb

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBottomMarginByClockScaleMode() holder is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBottomMarginByClockScaleMode() childPage is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isScalableClockShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showLockStarServiceBox()V
    .locals 14

    const/4 v13, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "showLockStarServiceBox() Already in progress or showing"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "showLockStarServiceBox() Keyguard is not showing"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showLockStarServiceBox() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setFullscreenMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getLocationOnScreen()[I

    move-result-object v2

    const-string/jumbo v3, "servicebox_clock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v12, 0x7f0d006c

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v12, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "showLockStarServiceBox() page is a null"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v13, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    return-void

    :cond_4
    const v12, 0x7f0d01a4

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v5, v3, v7}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v6, :cond_6

    move v3, v6

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_7

    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setIsLockStarScaledPageShowing(Z)V

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    const-wide/16 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v13, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    return-void

    :cond_6
    move v3, v13

    goto :goto_1

    :cond_7
    move v3, v13

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :try_start_2
    aget v3, v2, v3

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setLockStarPagePos(II)V

    instance-of v3, v5, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    if-eqz v3, :cond_9

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    move-object v3, v0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getLockStarClockType()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setLockStarClockType(I)V

    :cond_9
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    const/4 v3, 0x2

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    new-instance v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setLockStarDismissAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    iput-boolean v13, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowLockStarServiceBoxInProgress:Z

    throw v3
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachContentsView() holder is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isTransitionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isServiceBoxShowing()Z

    move-result v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContentsView(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "attachContentsView() needToTransition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", childPage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosX:I

    iget v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosY:I

    invoke-virtual {v0, v3, v5, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v3, :cond_5

    new-instance v5, Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-nez v3, :cond_7

    move-object v3, v4

    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v5, v3, v1, v6, v7}, Lcom/android/systemui/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAdditionalTag(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v3, v0, p1}, Lcom/android/systemui/servicebox/utils/SecTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->initViews(Landroid/view/View;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPageTopPos()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    goto :goto_2

    :cond_8
    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getClockScaleMode()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setBottomMarginByClockScaleMode(Landroid/view/View;I)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p1, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-interface {p1, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method protected closeWindow()V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dismissLockStarServiceBox()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->disableBlurFlag()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableBlurFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final dismissServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->dismissServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getContentsView(I)Landroid/view/View;
.end method

.method protected abstract getHolder()Landroid/view/ViewGroup;
.end method

.method protected final getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method protected final getPageTopPos()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getPageTopPos(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPosOfHolder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    return v2
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initViews(Landroid/view/View;)V
.end method

.method protected isBigView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    return v0
.end method

.method protected final isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isServiceBoxShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isShowServiceBox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isTransitionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeTransitionData()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->cancel()V

    :cond_1
    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAdditionalTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    return-void
.end method

.method public onClockScaleModeChanged(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setBottomMarginByClockScaleMode(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 0

    return-void
.end method

.method public onOwnerInfoSpaceChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 0

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 0

    return-void
.end method

.method public refreshViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews(I)V

    return-void
.end method

.method public abstract refreshViews(I)V
.end method

.method public setCoverState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsCovered:Z

    return-void
.end method

.method public setIsLockStarScaledPageShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsLockStarScaledPageShowing:Z

    return-void
.end method

.method public setLockStarDismissAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setLockStarPagePos(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosX:I

    iput p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mLockStarPagePosY:I

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsMKeyboardConnected:Z

    return-void
.end method

.method public setPageType(IZ)V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageType() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isReservedToTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setServiceBoxController() holder is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public showExternalActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final showServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->showServiceBox(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showLockStarServiceBox()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCMAS(Z)V
    .locals 0

    return-void
.end method

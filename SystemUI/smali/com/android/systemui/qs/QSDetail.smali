.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$1;,
        Lcom/android/systemui/qs/QSDetail$2;,
        Lcom/android/systemui/qs/QSDetail$3;,
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# instance fields
.field private INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private mAnimatingOpen:Z

.field private mBarController:Lcom/android/systemui/qs/bar/QSBarController;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mMobileKeyboard:I

.field private mOpenX:I

.field private mOpenY:I

.field private mOrientation:I

.field protected mQsDetailHeader:Landroid/view/View;

.field protected mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field protected mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/bar/QSBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetail;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleScrollToDetail(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput v5, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    iput v5, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private checkPendingAnimations()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleScanStateChanged(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private handleScrollToDetail(II)V
    .locals 2

    const v1, 0x7f0a03fb

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method private handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v3, v5}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private updateDetailText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f1208eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f120a36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->updateShowButtonBackground()V

    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v5, 0x0

    const/16 v3, 0x16e

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_6

    :cond_0
    move v0, v1

    :goto_1
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_7

    move v0, v1

    :goto_2
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_8

    :cond_1
    move v0, v1

    :goto_3
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_9

    :goto_4
    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v1

    :cond_3
    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    const/16 v1, 0x64

    :cond_4
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_4
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 11

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDetail;->setClickable(Z)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    if-eqz p1, :cond_2

    const/4 v7, 0x1

    :goto_2
    if-eq v8, v7, :cond_3

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_4

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v7, p1, :cond_4

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    move v8, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v8, v7, v9}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v7, "QSDetail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " detailView is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class v7, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f1200ac

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    :goto_4
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v7, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7, v8}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateToggleQSExpansion()V

    :goto_5
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    :cond_6
    :goto_6
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(ZLandroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_e

    new-instance v1, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    :goto_7
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v7, :cond_8

    const-class v7, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    :cond_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_5

    :cond_a
    sget-object v7, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v8, "202"

    if-eq v7, v8, :cond_c

    sget-object v7, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v8, "292"

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7, v8}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_b
    const-string/jumbo v7, "292"

    invoke-static {v7}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_c
    :goto_8
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7, v8}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateToggleQSExpansion()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v7, "202"

    invoke-static {v7}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    new-instance v1, Lcom/android/systemui/qs/QSDetail$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetail$6;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    goto/16 :goto_7
.end method

.method public isClosingDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_QSDetail_16725(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->onClickSettingButton()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x3a1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTileString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "4003"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, p2, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const v5, 0x7f07049c

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    iget v5, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v4, v5, :cond_3

    :cond_1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0704aa

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/qs/QSDetail;->mMobileKeyboard:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v0, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0a03f8

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07049d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    const v4, 0x7f0704a9

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0a03f9

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const v1, 0x7f0a03fa

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    new-instance v0, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/qs/QSDetail$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/QSDetail$7;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public updateShowButtonBackground()V
    .locals 6

    const v2, 0x7f0805c1

    const v3, 0x7f0805bf

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

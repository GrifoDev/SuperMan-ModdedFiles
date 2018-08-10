.class public Lcom/android/systemui/qs/QSFragment;
.super Landroid/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFragment$1;,
        Lcom/android/systemui/qs/QSFragment$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarController:Lcom/android/systemui/qs/bar/QSBarController;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mKeyguardShowing:Z

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsExpanded:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private updateQsState()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    xor-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->pagedTileLayoutVisibility(Z)V

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public getDesiredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/QSBarController;->getOnTopBarsHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public hideImmediately()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomClosing()Z

    move-result v0

    return v0
.end method

.method public isCustomizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method isExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method isListening()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBottom()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isExpanded()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isExpanded()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQsAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0155

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarController;->onFragmentDestroy()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v0, 0x7f0a03f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    const v0, 0x7f0a01fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/qs/SecQsAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v2, 0x7f0a0409

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/qs/SecQsAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    :cond_0
    const v0, 0x7f0a0408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    if-eqz p2, :cond_1

    const-string/jumbo v0, "expanded"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string/jumbo v0, "listening"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_2
    return-void
.end method

.method public setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQsAnimator;->setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V

    :cond_2
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setOnKeyguard(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setKeyguardShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/QSBarController;->setListening(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    sub-float v2, p1, v4

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float p2, v2, v5

    :cond_0
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getBottom()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getPaddingBottom()I

    move-result v5

    add-int v1, v3, v5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/bar/QSBarController;->setPosition(F)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    int-to-float v5, v1

    sub-float/2addr v5, v0

    mul-float/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v3, p1, v4

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setPosition(F)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v4, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_4
    return-void

    :cond_5
    move v3, p1

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/QSBarController;->getOnTopBarsHeight()F

    move-result v0

    goto :goto_1

    :cond_7
    move v3, p1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

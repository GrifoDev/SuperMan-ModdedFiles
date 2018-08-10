.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;
.super Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;
.source "FullWidthDetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
    }
.end annotation


# instance fields
.field mActivityToRunTransition:Landroid/app/Activity;

.field private mAutoStartSharedElementTransition:Z

.field mSharedElementName:Ljava/lang/String;

.field private mStartedPostpone:Z

.field mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    return-void
.end method


# virtual methods
.method public onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$2;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startPostponedEnterTransitionInternal()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    :cond_0
    return-void
.end method

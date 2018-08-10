.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewSharedElementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->startPostponedEnterTransitionInternal()V

    return-void
.end method

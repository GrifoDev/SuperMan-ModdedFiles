.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "FullWidthDetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    invoke-static {p1, p0}, Landroid/support/v17/leanback/transition/TransitionHelper;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

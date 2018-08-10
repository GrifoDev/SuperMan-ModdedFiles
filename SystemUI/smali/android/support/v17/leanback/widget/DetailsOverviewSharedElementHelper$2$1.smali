.class Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2$1;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "DetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestFocus()Z

    :cond_0
    invoke-static {p1, p0}, Landroid/support/v17/leanback/transition/TransitionHelper;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

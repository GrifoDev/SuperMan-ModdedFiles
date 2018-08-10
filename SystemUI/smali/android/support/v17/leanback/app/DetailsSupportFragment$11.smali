.class Landroid/support/v17/leanback/app/DetailsSupportFragment$11;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->lb_parallax_source:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

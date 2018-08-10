.class Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v3, v1, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

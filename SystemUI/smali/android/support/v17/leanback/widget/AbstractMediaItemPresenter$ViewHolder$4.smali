.class Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

.field final synthetic val$actionIndex:I

.field final synthetic val$actionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->val$actionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iput p3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->val$actionIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->val$actionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemRowActions:[Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    iget v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->val$actionIndex:I

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

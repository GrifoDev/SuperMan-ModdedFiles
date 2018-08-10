.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;
.super Ljava/lang/Object;
.source "ControlBarPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field final synthetic val$itemViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;ILandroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iput p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->val$position:I

    iput-object p3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->val$itemViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->val$position:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->val$itemViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    invoke-interface {v1, v2, v0, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;->onControlClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V

    :cond_0
    return-void
.end method

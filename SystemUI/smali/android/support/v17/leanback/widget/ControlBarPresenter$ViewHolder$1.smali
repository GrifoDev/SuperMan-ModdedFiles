.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "ControlBarPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    invoke-interface {v2, v1, v3, v4}, Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;->onControlSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

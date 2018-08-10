.class Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;
.super Ljava/lang/Object;
.source "VerticalGridSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    sget-boolean v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VerticalGridSupportFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "grid selected position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->gridOnItemSelected(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

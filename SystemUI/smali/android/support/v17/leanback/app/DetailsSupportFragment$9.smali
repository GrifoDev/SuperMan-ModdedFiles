.class Landroid/support/v17/leanback/app/DetailsSupportFragment$9;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v1

    sget-boolean v2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DetailsSupportFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "row selected position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " subposition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onRowSelected(II)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.class Landroid/support/v17/leanback/app/BrowseSupportFragment$5;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getSelectedPosition()I

    move-result v0

    sget-boolean v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BrowseSupportFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "header selected position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onRowSelected(I)V

    return-void
.end method

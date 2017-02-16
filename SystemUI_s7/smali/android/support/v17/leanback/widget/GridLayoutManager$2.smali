.class Landroid/support/v17/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

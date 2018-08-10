.class Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;
.super Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-wide v6, v5, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v8}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v8}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

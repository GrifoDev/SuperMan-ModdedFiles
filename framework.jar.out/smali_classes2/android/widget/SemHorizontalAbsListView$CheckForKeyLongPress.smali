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
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 4221
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4224
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    .line 4225
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 4226
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4228
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 4229
    return-void

    .line 4231
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 4232
    const/4 v0, 0x0

    .line 4233
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4234
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-wide v6, v5, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 4236
    .end local v0    # "handled":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 4237
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4238
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4223
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 4241
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4242
    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

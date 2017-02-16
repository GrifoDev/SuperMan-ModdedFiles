.class Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 4197
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4200
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v6, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 4201
    .local v5, "motionPosition":I
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4202
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4203
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v6, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 4204
    .local v4, "longPressPosition":I
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v7, v7, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4206
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 4207
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v6, v6, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 4210
    .end local v1    # "handled":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 4211
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4212
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4213
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4199
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_1
    return-void

    .line 4208
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 4215
    .end local v1    # "handled":Z
    :cond_3
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    goto :goto_1
.end method

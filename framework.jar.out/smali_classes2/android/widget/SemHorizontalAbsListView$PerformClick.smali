.class Landroid/widget/SemHorizontalAbsListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 4144
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 4151
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get12(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v6, v6, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_0

    return-void

    .line 4153
    :cond_0
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4154
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4155
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 4156
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 4157
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v6, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v6, :cond_4

    .line 4158
    if-eq v4, v10, :cond_4

    .line 4159
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->sameWindow()Z

    move-result v6

    .line 4157
    if-eqz v6, :cond_4

    .line 4160
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4163
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 4165
    :try_start_0
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4167
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get15(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get13(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4168
    :cond_1
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 4173
    .end local v3    # "handledNotifykeyPress":Z
    :cond_2
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get15(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get13(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_4

    .line 4175
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get13(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4176
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Landroid/widget/SemHorizontalAbsListView;->-wrap4(Landroid/widget/SemHorizontalAbsListView;II)V

    .line 4148
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    :goto_0
    return-void

    .line 4177
    .restart local v5    # "view":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get15(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4178
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4179
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-get9(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 4180
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Landroid/widget/SemHorizontalAbsListView;->-wrap4(Landroid/widget/SemHorizontalAbsListView;II)V

    .line 4181
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v4}, Landroid/widget/SemHorizontalAbsListView;->-set0(Landroid/widget/SemHorizontalAbsListView;I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4189
    :catch_0
    move-exception v1

    .line 4190
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 4183
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v7}, Landroid/widget/SemHorizontalAbsListView;->-get9(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v7

    invoke-static {v6, v7, v4}, Landroid/widget/SemHorizontalAbsListView;->-wrap4(Landroid/widget/SemHorizontalAbsListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

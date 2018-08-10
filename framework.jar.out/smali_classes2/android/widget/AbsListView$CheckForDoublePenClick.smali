.class final Landroid/widget/AbsListView$CheckForDoublePenClick;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDoublePenClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get30(Landroid/widget/AbsListView;)I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v5, :cond_5

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get29(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get29(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {v3, v8, v4, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    iget v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    invoke-static {v3, v4, v5}, Landroid/widget/AbsListView;->-wrap15(Landroid/widget/AbsListView;II)V

    :cond_6
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get29(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3, v9}, Landroid/widget/AbsListView;->-set9(Landroid/widget/AbsListView;I)I

    :cond_7
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3, v9}, Landroid/widget/AbsListView;->-set3(Landroid/widget/AbsListView;Z)Z

    return-void
.end method

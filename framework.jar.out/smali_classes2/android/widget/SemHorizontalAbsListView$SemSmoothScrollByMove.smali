.class Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get10(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

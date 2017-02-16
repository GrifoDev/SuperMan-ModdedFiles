.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iput-boolean v2, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "delta":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v0, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 456
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v0, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    .line 458
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;->onAutoScroll(I)V

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->reorderIfNeeded()V

    .line 466
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    if-eqz v1, :cond_3

    .line 467
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-get0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 448
    :cond_3
    return-void
.end method

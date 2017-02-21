.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    return-object v0
.end method

.method putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method removeItemAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_0
    if-ltz v4, :cond_1

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-get1(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-get1(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    if-eqz v8, :cond_2

    iput-boolean v10, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-get0(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-get0(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;->onItemAnimatorEnd()V

    goto :goto_2
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-get1(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->run()V

    return-void
.end method

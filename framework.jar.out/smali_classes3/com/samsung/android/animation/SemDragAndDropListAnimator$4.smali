.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchUpCancel : onAnimationEnd : mDndController.dropDone #2 , mFirstDragPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDragPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragReleaseForAccessibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "dndListener.onDragAndDropEnd() from onAnimationEnd() #3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_1
    return-void
.end method

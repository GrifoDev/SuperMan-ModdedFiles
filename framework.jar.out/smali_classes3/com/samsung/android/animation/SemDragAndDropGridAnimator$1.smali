.class Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;
.super Ljava/lang/Object;
.source "SemDragAndDropGridAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAnimatorEnd()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-wrap1(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDragReleaseForAccessibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndPositionValues()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SemDragAndDropGridAnimator"

    const-string/jumbo v1, "dndListener.onDragAndDropEnd() from onAllAnimationsFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    :cond_3
    return-void
.end method

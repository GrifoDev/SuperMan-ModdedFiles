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
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAnimatorEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-wrap1(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    .line 134
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->speakDragReleaseForAccessibility(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndPositionValues()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_2

    .line 147
    const-string/jumbo v0, "SemDragAndDropGridAnimator"

    const-string/jumbo v1, "dndListener.onDragAndDropEnd() from onAllAnimationsFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :cond_3
    return-void
.end method

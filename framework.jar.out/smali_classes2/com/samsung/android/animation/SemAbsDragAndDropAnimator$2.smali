.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAbsDragAndDropAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->val$fadeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-wrap0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/16 v1, 0xff

    iput v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-get0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-get0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

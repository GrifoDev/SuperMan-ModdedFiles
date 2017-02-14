.class Lcom/android/launcher2/CellPositioner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellPositioner;->animateChildToPosition(Landroid/view/View;IIIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/CellPositioner;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellPositioner;Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$2;->this$0:Lcom/android/launcher2/CellPositioner;

    iput-object p2, p0, Lcom/android/launcher2/CellPositioner$2;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher2/CellPositioner$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositioner$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositioner$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner$2;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$2;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$2;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$2;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$2;->this$0:Lcom/android/launcher2/CellPositioner;

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$2;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

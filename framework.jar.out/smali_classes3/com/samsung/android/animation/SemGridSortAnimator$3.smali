.class Lcom/samsung/android/animation/SemGridSortAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemGridSortAnimator;->startFadeInTranslateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemGridSortAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

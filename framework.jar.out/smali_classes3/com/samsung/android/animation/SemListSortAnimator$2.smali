.class Lcom/samsung/android/animation/SemListSortAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemListSortAnimator;->sortTheList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemListSortAnimator;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$isLastChild:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemListSortAnimator;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    iput-object p3, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$child:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;->onSort()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemListSortAnimator$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemListSortAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemListSortAnimator$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

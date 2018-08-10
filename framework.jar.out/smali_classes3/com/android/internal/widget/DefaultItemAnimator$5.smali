.class Lcom/android/internal/widget/DefaultItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

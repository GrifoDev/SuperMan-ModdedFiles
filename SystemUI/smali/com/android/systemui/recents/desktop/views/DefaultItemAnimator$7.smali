.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;->val$changeInfo:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

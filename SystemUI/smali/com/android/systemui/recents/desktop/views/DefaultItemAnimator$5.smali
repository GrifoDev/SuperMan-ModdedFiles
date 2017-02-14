.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;
.super Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-get0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-wrap3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

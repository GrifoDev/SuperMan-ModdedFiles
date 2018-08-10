.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->playPageMoveAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field final synthetic val$toIdx:I


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->val$toIdx:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get13(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->val$toIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-set1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get13(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->val$toIdx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x180

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x74

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

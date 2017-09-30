.class final Lcom/android/incallui/util/SecAnimationUtils$Scale$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$destView:Landroid/view/View;

.field final synthetic val$endScaleValue:F

.field final synthetic val$show:Z

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$show:Z

    iput-object p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$targetView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$destView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$endScaleValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$endScaleValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$endScaleValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$show:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$targetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$destView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$show:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;->val$destView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

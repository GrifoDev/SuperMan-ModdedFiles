.class final Lcom/android/incallui/util/SecAnimationUtils$Change$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newHeight:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$targetView:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$newHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$5;->val$targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

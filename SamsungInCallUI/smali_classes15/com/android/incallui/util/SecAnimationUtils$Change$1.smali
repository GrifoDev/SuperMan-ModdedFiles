.class final Lcom/android/incallui/util/SecAnimationUtils$Change$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V
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

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$1;->val$targetView:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$1;->val$newHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 724
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$1;->val$newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 729
    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 730
    return-void
.end method
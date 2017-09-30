.class final Lcom/android/incallui/util/SecAnimationUtils$Change$9;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newTopMargin:I

.field final synthetic val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$newTopMargin:I

    iput-object p3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$newTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$targetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$9;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

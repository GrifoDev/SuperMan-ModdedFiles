.class final Lcom/android/incallui/util/SecAnimationUtils$Change$10;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaTopMargin:I

.field final synthetic val$oldTopMargin:I

.field final synthetic val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$deltaTopMargin:I

    iput p3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$oldTopMargin:I

    iput-object p4, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$deltaTopMargin:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$oldTopMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$targetView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$10;->val$targetLp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class final Lcom/android/incallui/util/SecAnimationUtils$Change$6;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaHeight:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$6;->val$targetView:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$6;->val$deltaHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$6;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$6;->val$deltaHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$6;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

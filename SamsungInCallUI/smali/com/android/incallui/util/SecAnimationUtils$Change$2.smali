.class final Lcom/android/incallui/util/SecAnimationUtils$Change$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaHeight:I

.field final synthetic val$oldHeight:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$targetView:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$deltaHeight:I

    iput p3, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$oldHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$deltaHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$oldHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/util/SecAnimationUtils$Change$2;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

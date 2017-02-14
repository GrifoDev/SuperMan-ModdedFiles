.class Lcom/android/server/fingerprint/FingerprintMaskView$4;
.super Ljava/lang/Object;
.source "FingerprintMaskView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintMaskView;->setFingerImageAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

.field final synthetic val$grey:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintMaskView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->val$grey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->val$grey:I

    invoke-static {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap1(Lcom/android/server/fingerprint/FingerprintMaskView;IF)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get2(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get2(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

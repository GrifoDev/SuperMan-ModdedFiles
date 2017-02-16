.class Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;
.super Ljava/lang/Object;
.source "DcmTrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->-set1(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;
.super Ljava/lang/Object;
.source "KeyguardAlphaAffordanceAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setAlphaByAffordance(F)V

    return-void
.end method

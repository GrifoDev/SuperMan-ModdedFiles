.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;
.super Ljava/lang/Object;
.source "SolidBounceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-set5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2$1;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->invalidate()V

    return-void
.end method

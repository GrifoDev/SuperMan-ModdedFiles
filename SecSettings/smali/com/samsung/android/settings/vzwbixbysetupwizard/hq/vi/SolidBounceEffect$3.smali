.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;
.super Ljava/lang/Object;
.source "SolidBounceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->moveToTraget(JFJFJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-set6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get7(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get7(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-set3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->-set5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->invalidate()V

    return-void
.end method

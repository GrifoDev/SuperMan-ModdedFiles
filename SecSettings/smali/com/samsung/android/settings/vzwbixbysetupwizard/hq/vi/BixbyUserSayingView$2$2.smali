.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;

    iget-object v1, v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)[F

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;->val$finalI:I

    aput v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2$2;->this$1:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;

    iget-object v1, v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->invalidate()V

    return-void
.end method

.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->startDefaultListeningAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    const/high16 v9, 0x40a00000    # 5.0f

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide v10, 0x3fc3333340000000L    # 0.15000000596046448

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get7(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    sub-float v1, v3, v4

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v3

    mul-float v4, v2, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v12

    double-to-float v4, v4

    div-float/2addr v4, v8

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v3

    const v4, 0x3e4ccccd    # 0.2f

    sub-float v4, v2, v4

    mul-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v12

    double-to-float v4, v4

    div-float/2addr v4, v8

    const/4 v5, 0x1

    aput v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v3

    const v4, 0x3ecccccd    # 0.4f

    sub-float v4, v2, v4

    mul-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v12

    double-to-float v4, v4

    div-float/2addr v4, v8

    const/4 v5, 0x2

    aput v4, v3, v5

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v1

    add-float/2addr v4, v8

    div-float/2addr v4, v8

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

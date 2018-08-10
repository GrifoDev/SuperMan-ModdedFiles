.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initRunnable()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    const/16 v22, 0x0

    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ge v0, v4, :cond_5

    move/from16 v21, v22

    new-instance v11, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2$1;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;I)V

    new-instance v19, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v6

    aget v6, v6, v22

    const/4 v7, 0x0

    aput v6, v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get15(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v10

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v13, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v12

    const/4 v5, 0x2

    new-array v13, v5, [F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v5

    aget v5, v5, v22

    const/4 v6, 0x0

    aput v5, v13, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get9(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get18(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v13, v6

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v18

    const-wide/16 v14, 0x3e8

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    aput-object v5, v4, v22

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    aget-object v4, v4, v22

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v6

    aget v6, v6, v22

    const/4 v7, 0x0

    aput v6, v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get15(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get8(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v10

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v13, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v12

    const/4 v5, 0x2

    new-array v13, v5, [F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v5

    aget v5, v5, v22

    const/4 v6, 0x0

    aput v5, v13, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get9(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get18(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v13, v6

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v18

    const-wide/16 v14, 0x3e8

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    aput-object v5, v4, v22

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v6

    aget v6, v6, v22

    const/4 v7, 0x0

    aput v6, v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get15(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get8(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get17(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v10

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v13, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    move-result-object v12

    const/4 v5, 0x2

    new-array v13, v5, [F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F

    move-result-object v5

    aget v5, v5, v22

    const/4 v6, 0x0

    aput v5, v13, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get9(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get18(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v13, v6

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get0()Landroid/animation/TimeInterpolator;

    move-result-object v18

    const-wide/16 v14, 0x3e8

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    aput-object v5, v4, v22

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get14(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get14(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3f2

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mWiggleHandler run"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

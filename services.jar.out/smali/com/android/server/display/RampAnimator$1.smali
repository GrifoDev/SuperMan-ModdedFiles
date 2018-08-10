.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get6(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-float v7, v8

    const v8, 0x3089705f    # 1.0E-9f

    mul-float v6, v7, v8

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get10(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-ne v7, v13, :cond_1

    const v7, 0x3c83126f    # 0.016f

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get9(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v2, v3}, Lcom/android/server/display/RampAnimator;->-set3(Lcom/android/server/display/RampAnimator;J)J

    cmpg-float v7, v6, v10

    if-gez v7, :cond_2

    const-string/jumbo v7, "RampAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mAnimationCallback timeDelta calculate error!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v5

    cmpl-float v7, v5, v10

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get11(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    :goto_0
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set2(Lcom/android/server/display/RampAnimator;I)I

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get9(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_3
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get11(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-eq v7, v8, :cond_a

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get10(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float v0, v7, v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get10(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-ne v7, v13, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get3(Lcom/android/server/display/RampAnimator;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "sys.display.autosteps"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v7, 0x64

    div-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float v0, v7, v11

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v0, v7

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get11(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    add-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get11(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    :cond_7
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_2

    :cond_8
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get5(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get11(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v12}, Lcom/android/server/display/RampAnimator;->-set1(Lcom/android/server/display/RampAnimator;Z)Z

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get7(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get7(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto/16 :goto_1
.end method

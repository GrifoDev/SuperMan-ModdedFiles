.class Lcom/android/launcher2/SymmetricalLinearTween$1;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SymmetricalLinearTween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SymmetricalLinearTween;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SymmetricalLinearTween;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-wide v2, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v4, v12, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget v6, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    long-to-float v15, v4

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v14, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-boolean v15, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    if-nez v15, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v14, v15

    if-lez v15, :cond_4

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget v7, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iput v14, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v15, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v15, v14, v7}, Lcom/android/launcher2/TweenCallback;->onTweenValueChanged(FF)V

    const-wide/16 v16, 0x21

    div-long v8, v4, v16

    const-wide/16 v16, 0x1

    add-long v16, v16, v8

    const-wide/16 v18, 0x21

    mul-long v16, v16, v18

    add-long v10, v2, v16

    int-to-long v0, v6

    move-wide/from16 v16, v0

    cmp-long v15, v4, v16

    if-gez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v15, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_2
    int-to-long v0, v6

    move-wide/from16 v16, v0

    cmp-long v15, v4, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v15, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v15}, Lcom/android/launcher2/TweenCallback;->onTweenFinished()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    :cond_3
    return-void

    :cond_4
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gez v15, :cond_1

    const/4 v14, 0x0

    goto :goto_0
.end method

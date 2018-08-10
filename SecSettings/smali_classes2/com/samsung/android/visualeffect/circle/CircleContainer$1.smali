.class Lcom/samsung/android/visualeffect/circle/CircleContainer$1;
.super Landroid/os/Handler;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/circle/CircleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->-get3(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->-get1(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Lcom/samsung/android/visualeffect/circle/Circle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/Circle;->getScoreAnimProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    invoke-interface {v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;->onRoundEnd()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

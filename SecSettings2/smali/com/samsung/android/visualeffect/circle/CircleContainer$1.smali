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
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;->onRoundEnd()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

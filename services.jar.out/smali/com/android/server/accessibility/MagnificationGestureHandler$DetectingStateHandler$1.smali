.class Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;
.super Landroid/os/Handler;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-static {v3, v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;Landroid/view/MotionEvent;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

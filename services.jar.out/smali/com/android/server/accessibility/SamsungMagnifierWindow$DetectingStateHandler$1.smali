.class Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;
.super Landroid/os/Handler;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->-wrap0(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clear()V

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "handler MESSAGE_TRANSITION_TO_DELEGATING_STATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

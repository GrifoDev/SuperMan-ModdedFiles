.class Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;
.super Landroid/os/Handler;
.source "SamsungAccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get2(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "SamsungAccessibilityGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_MULTI_FINGER_TAP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get3(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get1(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get3(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerTapDetected(IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-wrap0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SamsungAccessibilityGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_MULTI_FINGER_HOLD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get3(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get1(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-get3(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerTapDetected(IIZ)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-wrap1(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;I)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "SamsungAccessibilityGestureDetector"

    const-string/jumbo v1, "MSG_MULTI_FINGER_STOP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;->this$0:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->-wrap0(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

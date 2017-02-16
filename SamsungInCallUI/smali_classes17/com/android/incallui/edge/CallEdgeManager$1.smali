.class Lcom/android/incallui/edge/CallEdgeManager$1;
.super Landroid/os/Handler;
.source "CallEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/edge/CallEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/edge/CallEdgeManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/edge/CallEdgeManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager$1;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    const-string v0, "CallEdgeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager$1;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    # invokes: Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage()V
    invoke-static {v0}, Lcom/android/incallui/edge/CallEdgeManager;->access$000(Lcom/android/incallui/edge/CallEdgeManager;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

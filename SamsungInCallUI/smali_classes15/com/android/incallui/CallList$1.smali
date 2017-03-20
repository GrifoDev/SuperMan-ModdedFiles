.class Lcom/android/incallui/CallList$1;
.super Landroid/os/Handler;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallList;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1080
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1090
    const-string v0, "CallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message not expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :goto_0
    return-void

    .line 1082
    :pswitch_0
    const-string v0, "CallList"

    const-string v1, "EVENT_DISCONNECTED_TIMEOUT "

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 1086
    :pswitch_1
    const-string v0, "CallList"

    const-string v1, "EVENT_NOTIFY_GENERIC_LISTENERS "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # invokes: Lcom/android/incallui/CallList;->notifyGenericListeners()V
    invoke-static {v0}, Lcom/android/incallui/CallList;->access$100(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 1080
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;->this$0:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "RemoteCallList"

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

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "RemoteCallList"

    const-string v1, "EVENT_DISCONNECTED_TIMEOUT "

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCallList$2;->this$0:Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-static {v1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->access$000(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

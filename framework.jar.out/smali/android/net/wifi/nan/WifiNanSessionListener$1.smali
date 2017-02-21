.class Landroid/net/wifi/nan/WifiNanSessionListener$1;
.super Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "message2"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    iput p5, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPublishFail(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

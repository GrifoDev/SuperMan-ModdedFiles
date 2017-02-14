.class Landroid/net/wifi/nan/WifiNanEventListener$1;
.super Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanEventListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIdentityChanged()V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNanDown(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

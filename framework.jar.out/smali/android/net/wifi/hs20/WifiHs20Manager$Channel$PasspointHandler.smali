.class Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;
.super Landroid/os/Handler;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasspointHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v2, "Hs20Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignored "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-static {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-get1(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-static {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-get1(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;->onChannelDisconnected()V

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-static {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-set0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;

    invoke-interface {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;->onSuccess()V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-static {v3, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap2(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/ScanResult;)V

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;->onFailure(I)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    invoke-interface {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onSuccess()V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onFailure(I)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->-wrap1(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;->string:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    invoke-interface {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onBrowserDismiss()V

    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    iget-object v3, v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;->string:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onBrowserLaunch(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x28002 -> :sswitch_2
        0x28003 -> :sswitch_1
        0x28008 -> :sswitch_5
        0x28009 -> :sswitch_4
        0x2800a -> :sswitch_3
    .end sparse-switch
.end method

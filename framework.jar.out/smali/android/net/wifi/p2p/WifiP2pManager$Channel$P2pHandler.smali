.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-static {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v6

    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    const-string/jumbo v10, "WifiP2pManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignored "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10, v12}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    :sswitch_1
    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v10}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    :sswitch_2
    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v6}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    :sswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    :sswitch_4
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v6, v9}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v6, v2}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    :sswitch_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_1

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    invoke-interface {v6}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListUnavailable()V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    invoke-interface {v6, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V

    goto :goto_0

    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10, v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    :sswitch_8
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v12

    const-string/jumbo v10, "wifiP2pDevice"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string/jumbo v11, "wifiP2pConfig"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-interface {v12, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    const-string/jumbo v11, "wpsPin"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onShowPinRequested(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onAttached()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onDetached(I)V

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v10, v12}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    goto/16 :goto_0

    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroupList;

    if-eqz v6, :cond_0

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    invoke-interface {v6, v3}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    const-string/jumbo v10, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    invoke-interface {v6, v5}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_1
        0x22003 -> :sswitch_2
        0x22005 -> :sswitch_1
        0x22006 -> :sswitch_2
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_3
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_5
        0x2201d -> :sswitch_1
        0x2201e -> :sswitch_2
        0x22020 -> :sswitch_1
        0x22021 -> :sswitch_2
        0x22023 -> :sswitch_1
        0x22024 -> :sswitch_2
        0x22026 -> :sswitch_1
        0x22027 -> :sswitch_2
        0x22029 -> :sswitch_1
        0x2202a -> :sswitch_2
        0x2202c -> :sswitch_1
        0x2202d -> :sswitch_2
        0x2202f -> :sswitch_1
        0x22030 -> :sswitch_2
        0x22032 -> :sswitch_7
        0x22034 -> :sswitch_1
        0x22035 -> :sswitch_2
        0x22037 -> :sswitch_1
        0x22038 -> :sswitch_2
        0x2203a -> :sswitch_c
        0x2203c -> :sswitch_1
        0x2203d -> :sswitch_2
        0x2203f -> :sswitch_1
        0x22040 -> :sswitch_2
        0x22042 -> :sswitch_1
        0x22043 -> :sswitch_2
        0x22045 -> :sswitch_1
        0x22046 -> :sswitch_2
        0x22048 -> :sswitch_1
        0x22049 -> :sswitch_2
        0x2204d -> :sswitch_d
        0x22050 -> :sswitch_2
        0x22051 -> :sswitch_1
        0x22073 -> :sswitch_6
        0x22075 -> :sswitch_b
        0x22076 -> :sswitch_a
        0x22077 -> :sswitch_8
        0x22078 -> :sswitch_9
        0x22091 -> :sswitch_1
        0x22092 -> :sswitch_2
    .end sparse-switch
.end method

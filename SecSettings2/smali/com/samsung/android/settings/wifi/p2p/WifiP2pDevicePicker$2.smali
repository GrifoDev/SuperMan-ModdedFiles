.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "WifiP2pDevicePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap8(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap6(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get12(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string/jumbo v4, "p2pGroupInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-set1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get12(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get12(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get12(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string/jumbo v4, "wifiP2pInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-set2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap5(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap7(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string/jumbo v4, "wifiP2pDevice"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-set4(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "requestState"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4, v7, v8}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap9(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "info_type"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "WifiP2pDevicePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wi-Fi is not allowed by DPM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v9, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto/16 :goto_0
.end method

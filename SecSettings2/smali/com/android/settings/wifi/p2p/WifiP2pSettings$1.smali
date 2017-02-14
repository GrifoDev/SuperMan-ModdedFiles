.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_8

    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v6, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get13()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get11(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get10()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_6
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get10()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get13()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get12(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v5, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set3(Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v4, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get15()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get15()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :cond_a
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get13()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get11(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get13()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get12(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "p2pGroupInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set2(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get6()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get6()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set3(Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const-string/jumbo v3, "wifiP2pInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    invoke-static {v6, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_11

    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v4, "connected!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_10
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_2

    :cond_11
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v6, :cond_12

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_10

    :cond_12
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v6, "disconnected"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    :cond_13
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set2(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_14
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get16(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get10()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    :goto_4
    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_15
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get10()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get19(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    :cond_16
    move v3, v5

    goto :goto_4

    :cond_17
    const-string/jumbo v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-set7(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v3, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "requestState"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3, v5, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_2
.end method

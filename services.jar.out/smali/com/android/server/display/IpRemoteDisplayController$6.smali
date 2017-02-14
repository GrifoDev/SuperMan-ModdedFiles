.class Lcom/android/server/display/IpRemoteDisplayController$6;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->requestEnableWifiDisplay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string/jumbo v6, "IpRemoteDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestEnableWifiDisplay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$params:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$params:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "ipAddr"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "port"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "deviceType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v6, "options"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v6}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    invoke-static {v6, v7}, Lcom/android/server/display/IpRemoteDisplayController;->-set0(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v6}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    const-string/jumbo v7, "remoteP2pMacAddr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v6}, Lcom/android/server/display/IpRemoteDisplayController;->-get1(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    const-string/jumbo v7, "deviceName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v7, "uri"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/display/IpRemoteDisplayController;->-set1(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v7, "isPendingRequest"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/IpRemoteDisplayController;->-set5(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    :cond_0
    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v6, v2, v5, v0, v4}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap5(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "IpRemoteDisplayController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

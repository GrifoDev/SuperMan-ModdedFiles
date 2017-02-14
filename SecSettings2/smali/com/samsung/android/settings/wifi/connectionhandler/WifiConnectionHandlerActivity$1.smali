.class Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WifiConnectionHandlerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiConnectionHandlerActivity"

    const-string/jumbo v4, "Destroy the popup, because connect again. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-get3(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-get4(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-set0(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-get1(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

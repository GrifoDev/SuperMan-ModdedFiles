.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
.super Landroid/os/AsyncTask;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    :try_start_0
    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Waiting for 2 seconds to ensure DNS is setup to avoid UnknownHostException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Determine internet connection..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnectionAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Wi-Fi connection available"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Captive portal detected..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Device is FRP enabled..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I

    :cond_0
    :goto_2
    const/4 v6, 0x0

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Exception in Thread sleep "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v7, "Captive portal NOT detected..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v4

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Time elapsed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-wide/16 v6, 0x1f40

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v6, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Exception in Thread sleep "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " What is the Connection result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

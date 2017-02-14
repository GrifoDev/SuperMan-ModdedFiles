.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;
.super Landroid/os/AsyncTask;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/NetworkInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;
    .locals 13

    const/4 v12, 0x2

    const/16 v11, 0xcc

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get0()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v7, "doInBackground() : mContext is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_0
    const/4 v0, 0x0

    array-length v6, p1

    if-eqz v6, :cond_1

    aget-object v6, p1, v9

    if-eqz v6, :cond_1

    aget-object v4, p1, v9

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get0()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v7, "ConnectivityManager is unavailable."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get2()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)I

    move-result v2

    const-string/jumbo v6, "WifiSecSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-set1(Z)Z

    if-ne v2, v11, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_3
    if-eq v2, v11, :cond_4

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_4

    const/16 v6, 0x18f

    if-gt v2, v6, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_4
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)I

    move-result v2

    const-string/jumbo v6, "WifiSecSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Captive Portal response : activeNetwork, httpResponseCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v11, :cond_8

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_8

    const/16 v6, 0x18f

    if-gt v2, v6, :cond_8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

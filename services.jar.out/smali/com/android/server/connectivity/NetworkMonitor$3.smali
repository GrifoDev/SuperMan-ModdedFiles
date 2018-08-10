.class Lcom/android/server/connectivity/NetworkMonitor$3;
.super Landroid/app/IProcessObserver$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 12

    const v11, 0x82010

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_7

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v11}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap10(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, p2}, Lcom/android/server/connectivity/NetworkMonitor;->-set8(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set10(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->-set7(Lcom/android/server/connectivity/NetworkMonitor;J)J

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-static {v7, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set5(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onForegroundActivitiesChanged: pid-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mIsSmartDetectionActivityCreated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get26(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTOFILL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get0(Lcom/android/server/connectivity/NetworkMonitor;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v3, v7, v5

    if-nez v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v5, "AUTOFILL"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v5, 0x3e8

    if-ne v5, p2, :cond_4

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "onForegroundActivitiesChanged: skip system uid"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set13(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    return-void

    :cond_3
    const-string/jumbo v5, "AUTOFILL"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get23(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "onForegroundActivitiesChanged: DO NOT check after captiveportallogin"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set13(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    return-void

    :cond_5
    const-string/jumbo v5, "com.android.captiveportallogin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v10}, Lcom/android/server/connectivity/NetworkMonitor;->-set13(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v7, 0x82013

    invoke-static {v5, v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap10(Lcom/android/server/connectivity/NetworkMonitor;I)V

    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get26(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap3(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v11, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set24(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get35(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onForegroundActivitiesChanged: calling state"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onForegroundActivitiesChanged: mobile data not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

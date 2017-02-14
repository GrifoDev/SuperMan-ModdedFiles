.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;
.super Landroid/os/CountDownTimer;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "mBixbyNotFoundTimer finished "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v1, "WiFiDirectSettings"

    const-string/jumbo v2, "Name"

    const-string/jumbo v3, "match"

    const-string/jumbo v4, "no"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-wrap7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

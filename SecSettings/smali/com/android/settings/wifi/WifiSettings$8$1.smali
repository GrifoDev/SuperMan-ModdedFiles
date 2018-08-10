.class Lcom/android/settings/wifi/WifiSettings$8$1;
.super Landroid/os/CountDownTimer;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings$8;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSettings$8;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings$8;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "mBixbyCountDownTimer onfinished "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap11(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "mBixbyCountDownTimer ontick "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap19(Lcom/android/settings/wifi/WifiSettings;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap11(Lcom/android/settings/wifi/WifiSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap5(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap0(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8$1;->this$1:Lcom/android/settings/wifi/WifiSettings$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap11(Lcom/android/settings/wifi/WifiSettings;)V

    goto :goto_0
.end method

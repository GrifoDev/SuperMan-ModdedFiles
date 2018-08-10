.class Lcom/samsung/android/settings/wifi/WifiReset$1;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get1(Lcom/samsung/android/settings/wifi/WifiReset;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiReset;->-get0()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAutoReconnectEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->val$enabled:Z

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setNetwork()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->val$enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->setNetwork()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;->setNetwork()V

    return-void
.end method

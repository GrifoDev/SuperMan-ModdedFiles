.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field static final DBG:Z

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final KT_OUI:Ljava/lang/String; = "0017C3"

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static isFirstGetManualConnection:Z

.field private static mContext:Landroid/content/Context;

.field private static mDisconnectionPriority:I

.field private static mManualConnection:Z


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    sput-boolean v1, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    sput v1, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 3

    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OEMExtension::getInstance() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    :cond_1
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 3

    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDisconnectionPriority() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    return v0
.end method

.method public getFeature()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, "OEMExtension"

    const-string/jumbo v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    const-string/jumbo v14, ""

    :try_start_0
    iget-object v1, v11, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Lcom/kt/wifiapi/GWSScanResult;

    iget-object v1, v11, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_3

    iget-object v1, v11, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget v4, v11, Landroid/net/wifi/ScanResult;->level:I

    iget v5, v11, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v6, v11, Landroid/net/wifi/ScanResult;->semBssLoadElement:Ljava/lang/String;

    const-string/jumbo v7, "null"

    iget-object v8, v11, Landroid/net/wifi/ScanResult;->semKtVendorSpecificInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "null"

    :goto_3
    iget-object v8, v11, Landroid/net/wifi/ScanResult;->semKtVendorSpecificInfo:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v10

    const-string/jumbo v1, "OEMExtension"

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "<unknown ssid>"

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "0017C3"

    goto :goto_3

    :cond_5
    return-object v9
.end method

.method public getInternetCheckOption(I)I
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getManualConnection()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getManualConnection() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isReconnectEnabled(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "autoReconnect"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isReconnectEnabled() : networkId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isReconnectEnabled() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get callSECApi(isReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v7
.end method

.method public setDisconnectionPriority(I)Z
    .locals 3

    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisconnectionPriority() : value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput p1, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    const/4 v0, 0x1

    return v0
.end method

.method public setInternetCheckOption(II)I
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public setManualConnection(Z)Z
    .locals 3

    sput-boolean p1, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setManualConnection() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setReconnectEnabled(IZ)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReconnectEnabled() Network ID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") value("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v4, "autoReconnect"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    if-nez v2, :cond_2

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set callSECApi(setReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v7
.end method

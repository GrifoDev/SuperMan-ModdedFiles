.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field private static final BLE_STR:Ljava/lang/String; = "ble="

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final DBG:Z

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final END_STR:Ljava/lang/String; = "####"

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static final VSI_STR:Ljava/lang/String; = "vsi="

.field public static final WIFI_SKIP_AUTO_CONNECTION:Ljava/lang/String; = "wifi_skip_auto_conn"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static isFirstGetManualConnection:Z

.field private static mContext:Landroid/content/Context;

.field private static mManualConnection:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    .line 62
    const-string/jumbo v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object p1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 71
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    .line 68
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
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

    .line 76
    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 79
    :cond_1
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 6

    .prologue
    .line 168
    const/4 v2, -0x1

    .line 170
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "priority"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 178
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDisconnectionPriority() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return v2
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x3f

    .line 91
    .local v0, "ret":I
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const-string/jumbo v1, "OEMExtension"

    const-string/jumbo v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/wifiapi/OEMExtension;->setScanResultsEx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInternetCheckOption(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 306
    .local v0, "msg":Landroid/os/Message;
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

    .line 308
    :cond_0
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 311
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getManualConnection()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "ret":Z
    const/4 v1, -0x1

    .line 120
    .local v1, "result":I
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    if-eqz v3, :cond_0

    .line 121
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 123
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x20

    iput v3, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 126
    if-ne v1, v4, :cond_2

    .line 127
    sput-boolean v4, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 134
    :goto_0
    sput-boolean v6, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    .line 137
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-boolean v2, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 138
    .local v2, "ret":Z
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    return v2

    .line 128
    .restart local v0    # "msg":Landroid/os/Message;
    .local v2, "ret":Z
    :cond_2
    if-nez v1, :cond_3

    .line 129
    sput-boolean v6, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    goto :goto_0

    .line 131
    :cond_3
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4
    return v6
.end method

.method public isReconnectEnabled(I)Z
    .locals 8
    .param p1, "networkId"    # I

    .prologue
    const/4 v7, 0x0

    .line 315
    const/4 v3, 0x0

    .line 316
    .local v3, "ret":Z
    const/4 v2, -0x1

    .line 318
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 319
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string/jumbo v4, "autoReconnect"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
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

    .line 326
    :cond_0
    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 328
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 329
    const/4 v3, 0x1

    .line 337
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

    .line 338
    :cond_1
    return v3

    .line 330
    :cond_2
    if-nez v2, :cond_3

    .line 331
    const/4 v3, 0x0

    goto :goto_0

    .line 333
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

    .line 334
    :cond_4
    return v7
.end method

.method public setDisconnectionPriority(I)Z
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 148
    const/4 v2, -0x1

    .line 150
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 151
    .local v1, "msg":Landroid/os/Message;
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisconnectionPriority() : value("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "priority"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 159
    if-nez v2, :cond_1

    .line 160
    const/4 v3, 0x1

    return v3

    .line 162
    :cond_1
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set callSECApi(setDisconnectionPriority) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    return v6
.end method

.method public setInternetCheckOption(II)I
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 294
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 295
    .local v0, "msg":Landroid/os/Message;
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

    .line 297
    :cond_0
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 298
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 299
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 301
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public setManualConnection(Z)Z
    .locals 7
    .param p1, "value"    # Z

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, -0x1

    .line 98
    .local v2, "result":I
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const/16 v3, 0x20

    iput v3, v1, Landroid/os/Message;->what:I

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "enable"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 107
    if-nez v2, :cond_1

    .line 108
    sput-boolean p1, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 109
    const/4 v3, 0x1

    return v3

    .line 111
    :cond_1
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    return v6
.end method

.method public setReconnectEnabled(IZ)Z
    .locals 8
    .param p1, "networkId"    # I
    .param p2, "reconnect"    # Z

    .prologue
    const/4 v7, 0x0

    .line 342
    const/4 v2, -0x1

    .line 343
    .local v2, "result":I
    const/4 v3, 0x0

    .line 345
    .local v3, "value":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 346
    .local v1, "msg":Landroid/os/Message;
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

    .line 348
    :cond_0
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 351
    if-eqz p2, :cond_1

    .line 352
    const/4 v3, 0x1

    .line 356
    :goto_0
    const-string/jumbo v4, "autoReconnect"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 360
    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 361
    if-nez v2, :cond_2

    .line 362
    const/4 v4, 0x1

    return v4

    .line 354
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 364
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

    .line 365
    :cond_3
    return v7
.end method

.method public setScanResultsEx(Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .param p1, "scanResults"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 205
    :cond_0
    const/16 v22, 0x0

    return-object v22

    .line 208
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v16, "gwsScanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const-string/jumbo v22, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 211
    .local v19, "lines":[Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 212
    .local v5, "bssid":Ljava/lang/String;
    const/16 v21, 0x0

    .line 213
    .local v21, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v7, 0x0

    .line 214
    .local v7, "level":I
    const/4 v8, 0x0

    .line 215
    .local v8, "freq":I
    const-string/jumbo v6, ""

    .line 216
    .local v6, "flags":Ljava/lang/String;
    const-string/jumbo v9, "null"

    .line 217
    .local v9, "BSSLoadElement":Ljava/lang/String;
    const-string/jumbo v10, "null"

    .line 218
    .local v10, "vendorSpecificOUI":Ljava/lang/String;
    const-string/jumbo v11, "null"

    .line 220
    .local v11, "vendorSpecificContents":Ljava/lang/String;
    const-string/jumbo v22, "bssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v13

    .line 221
    .local v13, "bssidStrLen":I
    const-string/jumbo v22, "flags="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v15

    .line 222
    .local v15, "flagLen":I
    const-string/jumbo v22, "ble="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v12

    .line 223
    .local v12, "bleLen":I
    const-string/jumbo v22, "vsi="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v20

    .line 225
    .local v20, "vsiLen":I
    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v23, v22

    .end local v5    # "bssid":Ljava/lang/String;
    .end local v21    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget-object v18, v19, v23

    .line 226
    .local v18, "line":Ljava/lang/String;
    const-string/jumbo v22, "bssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 227
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v25, v25, v13

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v5, v0, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .line 225
    :cond_2
    :goto_1
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto :goto_0

    .line 228
    :cond_3
    const-string/jumbo v22, "freq="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 230
    :try_start_0
    const-string/jumbo v22, "freq="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    .line 231
    :catch_0
    move-exception v14

    .line 232
    .local v14, "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    goto :goto_1

    .line 234
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string/jumbo v22, "level="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 236
    :try_start_1
    const-string/jumbo v22, "level="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 240
    if-lez v7, :cond_2

    add-int/lit16 v7, v7, -0x100

    goto :goto_1

    .line 241
    :catch_1
    move-exception v14

    .line 242
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    goto :goto_1

    .line 244
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string/jumbo v22, "flags="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 245
    new-instance v6, Ljava/lang/String;

    .end local v6    # "flags":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v25, v25, v15

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v6, v0, v15, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "flags":Ljava/lang/String;
    goto :goto_1

    .line 246
    :cond_6
    const-string/jumbo v22, "ssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 247
    const-string/jumbo v22, "ssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v21

    .local v21, "wifiSsid":Landroid/net/wifi/WifiSsid;
    goto/16 :goto_1

    .line 248
    .end local v21    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_7
    const-string/jumbo v22, "ble="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 249
    new-instance v9, Ljava/lang/String;

    .end local v9    # "BSSLoadElement":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v25, v25, v12

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v9, v0, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v9    # "BSSLoadElement":Ljava/lang/String;
    goto/16 :goto_1

    .line 250
    :cond_8
    const-string/jumbo v22, "vsi="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 251
    new-instance v10, Ljava/lang/String;

    .end local v10    # "vendorSpecificOUI":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v25, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 252
    .restart local v10    # "vendorSpecificOUI":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11    # "vendorSpecificContents":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    add-int/lit8 v25, v20, 0x6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v20

    add-int/lit8 v26, v26, -0x6

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v11, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v11    # "vendorSpecificContents":Ljava/lang/String;
    goto/16 :goto_1

    .line 253
    :cond_9
    const-string/jumbo v22, "===="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string/jumbo v22, "####"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 254
    :cond_a
    if-eqz v5, :cond_b

    .line 255
    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "ssid":Ljava/lang/String;
    :goto_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 257
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kt/wifiapi/GWSScanResult;

    .line 258
    .local v3, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v3, :cond_e

    .line 259
    iput v7, v3, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 261
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_3
    move-object/from16 v0, v22

    iput-object v0, v3, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 262
    iput-object v6, v3, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 263
    iput v8, v3, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 264
    iput-object v9, v3, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 265
    iput-object v10, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 266
    iput-object v11, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 267
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    :cond_b
    :goto_4
    const/4 v5, 0x0

    .line 277
    .local v5, "bssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 278
    const/4 v8, 0x0

    .line 279
    const-string/jumbo v6, ""

    .line 280
    const/16 v21, 0x0

    .line 281
    .local v21, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v9, "null"

    .line 282
    const-string/jumbo v10, "null"

    .line 283
    const-string/jumbo v11, "null"

    goto/16 :goto_1

    .line 255
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v21    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_c
    const-string/jumbo v4, "<unknown ssid>"

    .restart local v4    # "ssid":Ljava/lang/String;
    goto :goto_2

    .line 261
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v17    # "key":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "<unknown ssid>"

    goto :goto_3

    .line 269
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_b

    .line 270
    new-instance v3, Lcom/kt/wifiapi/GWSScanResult;

    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    invoke-direct/range {v3 .. v11}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 290
    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "line":Ljava/lang/String;
    :cond_f
    return-object v16
.end method

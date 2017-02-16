.class public final Landroid/bluetooth/BluetoothSecureManager;
.super Ljava/lang/Object;
.source "BluetoothSecureManager.java"


# static fields
.field public static final SECURE_SETTING_A2DP_ENABLE:Ljava/lang/String; = "a2dp_enable"

.field public static final SECURE_SETTING_FTP_ENABLE:Ljava/lang/String; = "ftp_enable"

.field public static final SECURE_SETTING_GATT_ENABLE:Ljava/lang/String; = "gatt_enable"

.field public static final SECURE_SETTING_HDP_ENABLE:Ljava/lang/String; = "hdp_enable"

.field public static final SECURE_SETTING_HFP_ENABLE:Ljava/lang/String; = "hfp_enable"

.field public static final SECURE_SETTING_HID_ENABLE:Ljava/lang/String; = "hid_enable"

.field public static final SECURE_SETTING_MAP_ENABLE:Ljava/lang/String; = "map_enable"

.field public static final SECURE_SETTING_OPP_ENABLE:Ljava/lang/String; = "opp_enable"

.field public static final SECURE_SETTING_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field public static final SECURE_SETTING_PAN_ENABLE:Ljava/lang/String; = "pan_enable"

.field public static final SECURE_SETTING_PBAP_ENABLE:Ljava/lang/String; = "pbap_enable"

.field public static final SECURE_SETTING_SAP_ENABLE:Ljava/lang/String; = "sap_enable"

.field public static final SECURE_SETTING_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManager"

.field private static This:Landroid/bluetooth/BluetoothSecureManager;


# instance fields
.field private mService:Landroid/bluetooth/IBluetoothSecureManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    .line 262
    return-void
.end method

.method public static getInstant()Landroid/bluetooth/BluetoothSecureManager;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0

    .line 131
    :cond_0
    const-class v1, Landroid/bluetooth/BluetoothSecureManager;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Landroid/bluetooth/BluetoothSecureManager;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSecureManager;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 135
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 272
    :try_start_0
    const-string/jumbo v4, "android.os.ServiceManager"

    .line 271
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "BluetoothSecureManager"

    const-string/jumbo v5, "calling getMethod for getService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string/jumbo v4, "getService"

    .line 275
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 274
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 276
    .local v3, "getService":Ljava/lang/reflect/Method;
    const-string/jumbo v4, "BluetoothSecureManager"

    const-string/jumbo v5, "calling getService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    const-string/jumbo v5, "bluetooth_secure_mode_manager"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 277
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 279
    .local v1, "binder":Landroid/os/IBinder;
    const-string/jumbo v4, "BluetoothSecureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getService return binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 281
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BluetoothSecureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load bt secure manager failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v8
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothSecureManagerService;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableSecureMode(Z)Z
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableSecureMode(Z)Z

    move-result v0

    return v0
.end method

.method public enableWhiteList(Z)Z
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableWhiteList(Z)Z

    move-result v0

    return v0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 1
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWhiteListCod(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListCod(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListFirstIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, -0x1

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListFirstIndex()I

    move-result v0

    return v0
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 241
    return-object v1

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListNextIndex(I)I
    .locals 1
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListNextIndex(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 257
    return-object v1

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecureModeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isSecureModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isWhiteListEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isWhiteListEnabled()Z

    move-result v0

    return v0
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "valueName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

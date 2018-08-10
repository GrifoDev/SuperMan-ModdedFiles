.class final Lcom/android/settingslib/bluetooth/PbapClientProfile;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;
    }
.end annotation


# static fields
.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/PbapClientProfile;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    sget-boolean v3, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PbapClientProfile"

    const-string/jumbo v4, "PBAPClientProfile got connect request"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PbapClientProfile"

    const-string/jumbo v4, "Ignoring Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "PbapClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PBAPClientProfile attempting to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PbapClientProfile"

    const-string/jumbo v1, "PBAPClientProfile got disconnect request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PbapClientProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PbapClientProfile"

    const-string/jumbo v2, "Error cleaning up PBAP Client proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_accessphonebook:I

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PbapClient"

    return-object v0
.end method

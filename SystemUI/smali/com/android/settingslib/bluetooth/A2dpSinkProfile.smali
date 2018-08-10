.class final Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;
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

.field private mService:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;)V

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "A2dpSinkProfile"

    const-string/jumbo v4, "Ignoring Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpSinkProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "A2dpSinkProfile"

    const-string/jumbo v2, "Error cleaning up A2DP proxy"

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

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v0
.end method

.method isA2dpPlaying()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dpSink;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
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

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "A2DPSink"

    return-object v0
.end method

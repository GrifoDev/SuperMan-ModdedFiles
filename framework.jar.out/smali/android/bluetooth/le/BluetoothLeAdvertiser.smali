.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x672

.field private static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private final mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private byteLength([B)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method private millisToUnit(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x10

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 12

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v9

    :cond_0
    if-eqz p2, :cond_1

    const/4 v5, 0x3

    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    :cond_5
    if-eqz v3, :cond_6

    mul-int/lit8 v9, v3, 0x4

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    :cond_6
    if-eqz v1, :cond_7

    mul-int/lit8 v9, v1, 0x10

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v9

    array-length v8, v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {p0, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v9

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {p0, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v5, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v5, v5, 0x3

    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    :cond_b
    :goto_4
    return v5

    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getSettingsName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "BluetoothLeAdvertiser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Setting Name is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getSettingsName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 14

    iget-object v13, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v13

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "Advertising is not allowed as BT is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isSecureModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "Advertising is not allowed by security manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    return-void

    :cond_2
    if-nez p4, :cond_3

    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v10

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    return-void

    :cond_5
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    return-void

    :cond_6
    :try_start_5
    new-instance v11, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v11}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {v11, v10}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x640

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, -0x15

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_8
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v12

    if-lez v12, :cond_9

    const/16 v1, 0xa

    if-ge v12, v1, :cond_10

    const/4 v7, 0x1

    :cond_9
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v9

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v13

    return-void

    :cond_a
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/16 v1, 0x190

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xa0

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getCustomAdvInterval()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->millisToUnit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/16 v1, -0xf

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_e
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    const/4 v1, -0x7

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_f
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_10
    div-int/lit8 v7, v12, 0xa
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "AdvertisingSet is not allowed as BT is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isSecureModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "AdvertisingSet is not allowed by security manager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p8, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "callback cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Legacy advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Legacy scan response data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v16

    const/4 v4, 0x3

    if-ne v15, v4, :cond_6

    xor-int/lit8 v4, v18, 0x1

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported primary PHY selected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_7

    xor-int/lit8 v4, v18, 0x1

    if-nez v4, :cond_8

    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_9

    xor-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported secondary PHY selected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Scan response data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Periodic advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v19

    if-eqz p4, :cond_d

    xor-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Controller does not support LE Periodic Advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    if-ltz p7, :cond_e

    const/16 v4, 0xff

    move/from16 v0, p7

    if-le v0, v4, :cond_f

    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    if-eqz p7, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t use maxExtendedAdvertisingEvents with controller that don\'t support LE Extended Advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    if-ltz p6, :cond_11

    const v4, 0xffff

    move/from16 v0, p6

    if-le v0, v4, :cond_12

    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "startAdvertisingSet() Fail to get GATT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v12

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "Failed to get Bluetooth gatt - "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Failed to get Bluetooth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    move-object/from16 v0, p8

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "callback instance already associated with advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    :try_start_1
    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v12

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "Failed to start advertising set - "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Failed to start advertising set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v3, "Stop Advertising is not allowed as BT is off"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSetCallback;

    if-nez v0, :cond_3

    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v3, "wrapper is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method public stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 5

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "BluetoothLeAdvertiser"

    const-string/jumbo v4, "Stop AdvertisingSet is not allowed as BT is off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    if-nez p1, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "callback cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-nez v2, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v3, "BluetoothLeAdvertiser"

    const-string/jumbo v4, "stopAdvertisingSet() Fail to get GATT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothLeAdvertiser"

    const-string/jumbo v4, "Failed to stop advertising - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Failed to stop advertising"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public stopAllAdvertising()V
    .locals 12

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v8, "BluetoothLeAdvertiser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stop All Advertising :: standalone boolean value is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/le/IAdvertisingSetCallback;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_0
    :try_start_1
    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v8}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v8, "BluetoothLeAdvertiser"

    const-string/jumbo v10, "stopAllAdvertising() Fail to get GATT"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return-void

    :cond_1
    :try_start_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/IAdvertisingSetCallback;

    invoke-interface {v5, v1}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string/jumbo v8, "BluetoothLeAdvertiser"

    const-string/jumbo v10, "Failed to stop all advertising - "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Failed to stop all advertising"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v9

    return-void
.end method

.method wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .locals 1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .locals 1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method

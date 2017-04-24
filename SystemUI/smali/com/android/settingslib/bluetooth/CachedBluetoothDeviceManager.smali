.class public final Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method public static onDeviceDisappeared(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4

    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CachedBluetoothDeviceManager"

    const-string/jumbo v3, "addDevice :: newDevice is added already"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSequence(I)V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized clearNonBondedDevices()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateSequeces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 3

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->needListFiltering(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method public needListFiltering(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "CachedBluetoothDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needListFiltering :: skip device listing, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]device name is same with address."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v5

    if-ne v5, v9, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v1

    aget-byte v5, v1, v7

    if-nez v5, :cond_5

    aget-byte v5, v1, v8

    if-ne v5, v8, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v8, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    if-le v5, v10, :cond_5

    aget-byte v3, v4, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v5, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v9, :cond_2

    const-string/jumbo v5, "CachedBluetoothDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needListFiltering :: skip device listing, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is LE gear device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "GEAR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, " LE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "CachedBluetoothDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needListFiltering :: skip device listing, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is LE gear device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getBluetoothType()B

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v5, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v9, :cond_4

    const-string/jumbo v5, "CachedBluetoothDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needListFiltering :: skip device listing, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is LE gear device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "GEAR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, " LE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "CachedBluetoothDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needListFiltering :: skip device listing, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is LE gear device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    return v7
.end method

.method public declared-synchronized onBluetoothStateChanged(I)V
    .locals 4

    monitor-enter p0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateSequeces()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshName()V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateSequeces()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSequence(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattServer$1;,
        Landroid/bluetooth/BluetoothGattServer$2;
    }
.end annotation


# static fields
.field private static final CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattServer"

.field private static final VDBG:Z


# instance fields
.field private isConnectionValid:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDevice:Ljava/lang/String;

.field private mServerIf:I

.field private mServerIfLock:Ljava/lang/Object;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGattServer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    return v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mConnectedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGattServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    return p1
.end method

.method static synthetic -set1(Landroid/bluetooth/BluetoothGattServer;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    iput-boolean v4, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    new-instance v2, Landroid/bluetooth/BluetoothGattServer$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    new-instance v2, Landroid/bluetooth/BluetoothGattServer$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothGattServer$2;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    iput v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iput p3, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mConnectedDevices:Ljava/util/List;

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterCallback()V
    .locals 4

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback() - mServerIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 19

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addService() - service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getHandles()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->isAdvertisePreferred()Z

    move-result v7

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothGattService;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->addIncludedService(IIILandroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v2

    add-int v18, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    move/from16 v0, v18

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v2

    add-int v18, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, v18

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->endServiceDeclaration(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    return v1
.end method

.method public cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelConnection() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearServices()V
    .locals 3

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, "clearServices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clearServices(I)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 4

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, "close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mConnectedDevices:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 8

    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() - device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", auto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string/jumbo v1, "1"

    const-string/jumbo v4, "service.bt.security.policy.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, "connect BLE service is disabled; IT Policy is Handsfree Only"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string/jumbo v1, "0"

    const-string/jumbo v4, "service.bt.security.policy.mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, "connect BLE service is disabled; IT Policy is Disable Mode"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isSecureModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, "connect BLE service is disabled; Security mode disables gatt server connection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_7

    :cond_6
    return v2

    :cond_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v1, v6, :cond_8

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mDevice:Ljava/lang/String;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_9

    move v1, v2

    :goto_0
    iget v7, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    invoke-interface {v4, v5, v6, v1, v7}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_9
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothGattServer;->isConnectionValid:Z

    return v2
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 3

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 12

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Chracteristic value is empty. Use BluetoothGattCharacteristic#setvalue to update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    move v8, p3

    invoke-interface/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v10

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "registerCallback()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_0

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "GATT service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v5, "App can register callback only once"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v8

    :cond_1
    :try_start_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return v8

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v4

    return v8

    :catch_1
    move-exception v1

    :try_start_6
    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method public removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeService() - service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v2, :cond_1

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_2

    return v8

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->removeService(IIILandroid/os/ParcelUuid;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public requestDataRate(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 5

    const/4 v4, 0x0

    if-ltz p3, :cond_0

    const/4 v1, 0x3

    if-le p3, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Data Rate Mode not within valid range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDataRate - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_3

    :cond_2
    return v4

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->serverDataRateUpdate(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_1

    :cond_0
    return v8

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public updateConnParams(Landroid/bluetooth/BluetoothDevice;IIIIII)Z
    .locals 10

    const-string/jumbo v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnParams - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->serverConnectionParameterUpdate(ILjava/lang/String;IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

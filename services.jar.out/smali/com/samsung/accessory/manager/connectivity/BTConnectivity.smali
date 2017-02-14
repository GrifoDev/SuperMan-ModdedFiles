.class public Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "BTConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
    }
.end annotation


# static fields
.field private static final MY_UUID_INSECURE:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

.field private mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static synthetic -get0(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0172c870-6e31-11e4-9803-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    const-class v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    new-instance v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    sget-object v2, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "connect"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disable()Z
    .locals 2

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, " Current BTConnectivity state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mEnabledInternal:Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    sget-object v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->NOT_SUPPORT:[B

    return-object v0
.end method

.method public sendStopAuth()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public sendSync([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSync"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

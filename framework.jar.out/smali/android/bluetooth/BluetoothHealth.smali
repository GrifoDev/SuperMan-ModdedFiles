.class public final Landroid/bluetooth/BluetoothHealth;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHealth$1;,
        Landroid/bluetooth/BluetoothHealth$2;,
        Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    }
.end annotation


# static fields
.field public static final APP_CONFIG_REGISTRATION_FAILURE:I = 0x1

.field public static final APP_CONFIG_REGISTRATION_SUCCESS:I = 0x0

.field public static final APP_CONFIG_UNREGISTRATION_FAILURE:I = 0x3

.field public static final APP_CONFIG_UNREGISTRATION_SUCCESS:I = 0x2

.field public static final CHANNEL_TYPE_ANY:I = 0xc

.field public static final CHANNEL_TYPE_RELIABLE:I = 0xa

.field public static final CHANNEL_TYPE_STREAMING:I = 0xb

.field private static final DBG:Z = true

.field public static final HEALTH_OPERATION_ERROR:I = 0x1771

.field public static final HEALTH_OPERATION_GENERIC_FAILURE:I = 0x1773

.field public static final HEALTH_OPERATION_INVALID_ARGS:I = 0x1772

.field public static final HEALTH_OPERATION_NOT_ALLOWED:I = 0x1775

.field public static final HEALTH_OPERATION_NOT_FOUND:I = 0x1774

.field public static final HEALTH_OPERATION_SUCCESS:I = 0x1770

.field public static final SINK_ROLE:I = 0x2

.field public static final SOURCE_ROLE:I = 0x1

.field public static final STATE_CHANNEL_CONNECTED:I = 0x2

.field public static final STATE_CHANNEL_CONNECTING:I = 0x1

.field public static final STATE_CHANNEL_DISCONNECTED:I = 0x0

.field public static final STATE_CHANNEL_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHealth"

.field private static final VDBG:Z


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHealth;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothHealth;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothHealth$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$1;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothHealth$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$2;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHealth;->doBind()Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothHealth"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 4

    const/16 v3, 0xc

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p2, v1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/16 v0, 0xa

    if-eq p3, v0, :cond_2

    const/16 v0, 0xb

    if-eq p3, v0, :cond_2

    if-ne p3, v3, :cond_0

    :cond_2
    if-eqz p4, :cond_0

    if-ne p2, v1, :cond_3

    if-ne p3, v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private isEnabled()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothHealth"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    iput-object v6, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothHealth"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "BluetoothHealth"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHealth;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "BluetoothHealth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth Health Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v2, 0x1

    return v2
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHealth;->getConnectedHealthDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothHealth"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/bluetooth/BluetoothHealth;->checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return v2

    :cond_1
    new-instance v3, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;

    invoke-direct {v3, p5}, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHealthCallback;)V

    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>(Ljava/lang/String;III)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v4, v0, v3}, Landroid/bluetooth/IBluetoothHealth;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "BluetoothHealth"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "BluetoothHealth"

    const-string/jumbo v5, "Proxy not attached to service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "BluetoothHealth"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerSinkAppConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 6

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v3, 0x2

    const/16 v4, 0xc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHealth;->registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z

    move-result v0

    return v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHealth;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothHealth"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "BluetoothHealth"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHealth"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

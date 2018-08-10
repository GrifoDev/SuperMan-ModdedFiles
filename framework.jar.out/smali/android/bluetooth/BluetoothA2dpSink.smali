.class public final Landroid/bluetooth/BluetoothA2dpSink;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothA2dpSink$1;,
        Landroid/bluetooth/BluetoothA2dpSink$2;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_CONFIG_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z

.field public static final EXTRA_AUDIO_CONFIG:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpSink"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothSinkServiceChangeCallback:Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private mService:Landroid/bluetooth/IBluetoothA2dpSink;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/bluetooth/BluetoothA2dpSink;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothSinkServiceChangeCallback:Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic -get6(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothA2dpSink;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$1;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothSinkServiceChangeCallback:Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$2;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPid:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothSinkServiceChangeCallback:Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->doBind()Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    const-string/jumbo v0, "BluetoothA2dpSink"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "disconnected"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "connecting"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "connected"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "disconnecting"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "playing"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "not playing"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 6

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothSinkServiceChangeCallback:Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "BluetoothA2dpSink"

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

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothA2dpSink -- connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") called by PID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothA2dpSink -- disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") called by PID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5
.end method

.method doBind()Z
    .locals 13

    const/4 v12, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v8, Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v8, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const-string/jumbo v8, "BluetoothA2dpSink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "doBind(): CallingUid(myUserHandle) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x64

    if-lt v7, v8, :cond_2

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_2

    const/4 v4, 0x0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5, v7}, Landroid/sec/enterprise/IEDMProxy;->isKnoxBluetoothEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    const-string/jumbo v8, "BluetoothA2dpSink"

    const-string/jumbo v9, "doBind(): Bluetooth for this container is disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :catch_0
    move-exception v6

    const-string/jumbo v8, "BluetoothA2dpSink"

    const-string/jumbo v9, "doBind(): isKnoxBluetoothEnabled on EDMProxy failed! "

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8, v12, v12}, Landroid/content/Intent;->resolveSystemServiceAsUser(Landroid/content/pm/PackageManager;II)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v8, "BluetoothA2dpSink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "doBind(): comp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; bindAsuser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    sget-object v10, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v8, v3, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    :cond_3
    const-string/jumbo v8, "BluetoothA2dpSink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not bind to Bluetooth A2DP SINK Service with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return v12

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    return v12

    :cond_4
    const/4 v8, 0x1

    return v8
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    return-void
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAudioConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return-object v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v4
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dpSink;->getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return-object v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v4
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method public processSetSuspend(Z)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->processSetSuspend(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return v4

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Landroid/bluetooth/BluetoothA2dpSink;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_1

    return v4

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothA2dpSink"

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

    return v4

    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_3

    const-string/jumbo v1, "BluetoothA2dpSink"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4
.end method

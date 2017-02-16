.class public final Landroid/bluetooth/SemBluetoothHidDevice;
.super Ljava/lang/Object;
.source "SemBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothHidDevice$1;,
        Landroid/bluetooth/SemBluetoothHidDevice$2;,
        Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hid.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ERROR_INVALID_PARAMETER:B = 0x4t

.field public static final ERROR_INVALID_REPORT_ID:B = 0x2t

.field public static final ERROR_NONE:B = 0x0t

.field public static final ERROR_NOT_READY:B = 0x1t

.field public static final ERROR_UNKNOWN_ERROR:B = 0xet

.field public static final ERROR_UNSUPPORTED_REQUEST:B = 0x3t

.field public static final PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final SUBCLASS1_COMBO:B = -0x40t

.field public static final SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final SUBCLASS1_MOUSE:B = -0x80t

.field public static final SUBCLASS1_NONE:B = 0x0t

.field public static final SUBCLASS2_CARD_READER:B = 0x6t

.field public static final SUBCLASS2_DIGITIZER_TABLET:B = 0x5t

.field public static final SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final SUBCLASS2_UNCATEGORIZED:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hidd:Landroid/bluetooth/SemBluetoothHidDevice;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/ISemBluetoothHidDevice;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/ISemBluetoothHidDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/SemBluetoothHidDevice;Landroid/bluetooth/ISemBluetoothHidDevice;)Landroid/bluetooth/ISemBluetoothHidDevice;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v4, Landroid/bluetooth/SemBluetoothHidDevice$1;

    invoke-direct {v4, p0}, Landroid/bluetooth/SemBluetoothHidDevice$1;-><init>(Landroid/bluetooth/SemBluetoothHidDevice;)V

    .line 289
    iput-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 322
    new-instance v4, Landroid/bluetooth/SemBluetoothHidDevice$2;

    invoke-direct {v4, p0}, Landroid/bluetooth/SemBluetoothHidDevice$2;-><init>(Landroid/bluetooth/SemBluetoothHidDevice;)V

    iput-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    .line 347
    sget-object v4, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SemBluetoothHidDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mContext:Landroid/content/Context;

    .line 350
    iput-object p2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 351
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 353
    iget-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 354
    .local v3, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_0

    .line 356
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 364
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-nez v4, :cond_1

    .line 365
    sget-object v4, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Binding HID Device service..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Landroid/bluetooth/SemBluetoothHidDevice;->doBind()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v5

    .line 346
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v4, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 362
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 368
    :catch_2
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v4, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 426
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    .line 427
    :cond_1
    new-instance v0, Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-direct {v0, p0, p1}, Landroid/bluetooth/SemBluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 428
    .local v0, "hidd":Landroid/bluetooth/SemBluetoothHidDevice;
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 389
    sget-object v3, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "close()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 392
    .local v2, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v2, :cond_0

    .line 394
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 401
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v3, :cond_1

    .line 402
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 411
    iput-object v6, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 388
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v3, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "close: could not unbind HID Dev service: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 400
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public closeProfileProxy()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/bluetooth/SemBluetoothHidDevice;->close()V

    .line 437
    return-void
.end method

.method public connect()Z
    .locals 4

    .prologue
    .line 684
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "connect()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v1, 0x0

    .line 688
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/ISemBluetoothHidDevice;->connect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 691
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 710
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v1, 0x0

    .line 714
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 716
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/ISemBluetoothHidDevice;->connect_to(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 724
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 717
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 4

    .prologue
    .line 734
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disconnect()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v1, 0x0

    .line 738
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 740
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/ISemBluetoothHidDevice;->disconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 741
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 377
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.IBluetoothHidDevice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 379
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Bound to HID Device Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v2, 0x1

    return v2

    .line 381
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth HID Device Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v5
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

    .prologue
    .line 446
    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 464
    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConnectionState(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDevicesMatchingConnectionStates(): states="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOccupied()Z
    .locals 4

    .prologue
    .line 521
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isOccupied()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v1, 0x0

    .line 525
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 527
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/ISemBluetoothHidDevice;->isPreoccupied()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 528
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceCallback;)Z
    .locals 8
    .param p1, "sdp"    # Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    .param p4, "callback"    # Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    .prologue
    .line 491
    const/4 v7, 0x0

    .line 493
    .local v7, "result":Z
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 494
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 497
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v0, :cond_2

    .line 500
    :try_start_0
    new-instance v1, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    invoke-direct {v1}, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;-><init>()V

    .line 502
    .local v1, "config":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    new-instance v5, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;

    invoke-direct {v5, p4}, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;-><init>(Landroid/bluetooth/SemBluetoothHidDeviceCallback;)V

    .line 503
    .local v5, "cbw":Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/ISemBluetoothHidDevice;->registerApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/ISemBluetoothHidDeviceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 511
    .end local v1    # "config":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    .end local v5    # "cbw":Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    .end local v7    # "result":Z
    :goto_0
    return v7

    .line 504
    .restart local v7    # "result":Z
    :catch_0
    move-exception v6

    .line 505
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public replyReport(BB[B)Z
    .locals 5
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 607
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replyReport(): type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v1, 0x0

    .line 611
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 613
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/ISemBluetoothHidDevice;->replyReport(BB[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 621
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 614
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportError(B)Z
    .locals 5
    .param p1, "error"    # B

    .prologue
    .line 633
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportError(): error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v1, 0x0

    .line 637
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 639
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/ISemBluetoothHidDevice;->reportError(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 647
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 640
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReport(I[B)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 579
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendReport(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, 0x0

    .line 583
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 585
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/ISemBluetoothHidDevice;->sendReport(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 593
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 586
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unplug()Z
    .locals 4

    .prologue
    .line 658
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unplug()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v1, 0x0

    .line 662
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 664
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/ISemBluetoothHidDevice;->unplug()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 665
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uregisterAppConfiguration(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    .prologue
    .line 552
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " uregisterAppConfiguration ()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, 0x0

    .line 556
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 558
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDevice;->mService:Landroid/bluetooth/ISemBluetoothHidDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/ISemBluetoothHidDevice;->unregisterApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 559
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/SemBluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

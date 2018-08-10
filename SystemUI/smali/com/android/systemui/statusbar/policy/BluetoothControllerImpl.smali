.class public Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mCachedState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private final mCurrentUser:I

.field private mEnabled:Z

.field private final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mState:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "BluetoothController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->setReceiverHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onBluetoothStateChanged(I)V

    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    return-void
.end method

.method private getDeviceString(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CONNECTING"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DISCONNECTING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnected()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    const-string/jumbo v1, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mConnectionState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method public canConfigBluetooth()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_bluetooth"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->scan(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->scan(Z)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "BluetoothController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mLocalBluetoothManager="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "  mEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  mConnectionState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->-get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v2, "  Bluetooth Devices:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDeviceString(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBluetoothState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    return v0
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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectedDeviceList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getLastConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public isBluetoothConnected()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothConnecting()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method public isBluetoothSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChanged bluetoothState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged cachedDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iput p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceAdded cachedDevice ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onDeviceAttributesChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceBondStateChanged cachedDevice ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bondState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceDeleted cachedDevice ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged profile ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method public scan(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scan = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0
.end method

.method public setBluetoothEnabled(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "setBluetoothEnabled :: Set Quickpanel bluetooth on for launch scandialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->setQuickPannelOn()V

    :cond_0
    return-void
.end method

.method public updateListDevices()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    :cond_0
    return-void
.end method

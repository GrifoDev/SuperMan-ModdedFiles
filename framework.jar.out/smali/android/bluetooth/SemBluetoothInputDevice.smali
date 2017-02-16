.class public final Landroid/bluetooth/SemBluetoothInputDevice;
.super Ljava/lang/Object;
.source "SemBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"


# instance fields
.field private final mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0
    .param p1, "profile"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/SemBluetoothInputDevice;)V
    .locals 0
    .param p1, "profile"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/SemBluetoothInputDevice;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    return-void
.end method

.method public static getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 91
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;

    invoke-direct {v1, p1}, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;-><init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public closeProfileProxy()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 102
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 100
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
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
    .line 165
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
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
    .line 172
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 213
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 197
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

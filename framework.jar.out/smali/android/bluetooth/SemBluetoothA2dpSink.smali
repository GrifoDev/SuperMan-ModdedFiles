.class public final Landroid/bluetooth/SemBluetoothA2dpSink;
.super Ljava/lang/Object;
.source "SemBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"


# instance fields
.field private final mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/SemBluetoothA2dpSink;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/SemBluetoothA2dpSink;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    return-void
.end method

.method public static getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;

    invoke-direct {v1, p1}, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;-><init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    const/16 v2, 0xb

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public closeProfileProxy()V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

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

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setSuspendMode(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->processSetSuspend(Z)Z

    move-result v0

    return v0
.end method

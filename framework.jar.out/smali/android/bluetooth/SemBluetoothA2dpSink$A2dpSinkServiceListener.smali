.class Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;
.super Ljava/lang/Object;
.source "SemBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpSinkServiceListener"
.end annotation


# instance fields
.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 62
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v1, Landroid/bluetooth/SemBluetoothA2dpSink;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/bluetooth/SemBluetoothA2dpSink;-><init>(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/SemBluetoothA2dpSink;)V

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 66
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 71
    return-void
.end method

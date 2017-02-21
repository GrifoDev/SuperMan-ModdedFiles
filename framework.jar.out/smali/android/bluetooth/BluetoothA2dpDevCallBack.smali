.class public abstract Landroid/bluetooth/BluetoothA2dpDevCallBack;
.super Ljava/lang/Object;
.source "BluetoothA2dpDevCallBack.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothA2dpDevCallBack;->DBG:Z

    const-class v0, Landroid/bluetooth/BluetoothA2dpDevCallBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothA2dpDevCallBack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpDataUpdate(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/bluetooth/BluetoothA2dpDevCallBack;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothA2dpDevCallBack;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BluetoothA2dpDevCallBack onA2dpDataUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class public Landroid/bluetooth/BluetoothA2dp$BluetoothA2dpCallBackWrapper;
.super Landroid/bluetooth/IBluetoothA2dpDevCallBack$Stub;
.source "BluetoothA2dp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothA2dpCallBackWrapper"
.end annotation


# instance fields
.field private mCallBack:Landroid/bluetooth/BluetoothA2dpDevCallBack;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dpDevCallBack;)V
    .locals 0
    .param p1, "callBack"    # Landroid/bluetooth/BluetoothA2dpDevCallBack;

    .prologue
    .line 891
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpDevCallBack$Stub;-><init>()V

    .line 892
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$BluetoothA2dpCallBackWrapper;->mCallBack:Landroid/bluetooth/BluetoothA2dpDevCallBack;

    .line 891
    return-void
.end method


# virtual methods
.method public onA2dpDataUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "a2dpInfo"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$BluetoothA2dpCallBackWrapper;->mCallBack:Landroid/bluetooth/BluetoothA2dpDevCallBack;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpDevCallBack;->onA2dpDataUpdate(Ljava/lang/String;)V

    .line 896
    return-void
.end method

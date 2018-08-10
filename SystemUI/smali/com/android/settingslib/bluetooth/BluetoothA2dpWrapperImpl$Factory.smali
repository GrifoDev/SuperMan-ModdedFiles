.class public Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl$Factory;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapperImpl.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;

    invoke-direct {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    return-object v0
.end method

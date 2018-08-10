.class public Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapperImpl.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl$Factory;
    }
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

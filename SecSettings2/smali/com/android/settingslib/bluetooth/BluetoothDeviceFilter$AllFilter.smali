.class final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

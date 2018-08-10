.class public final Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "SemBluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field public final delayVariation:I

.field public final latency:I

.field public final peakBandwidth:I

.field public final serviceType:I

.field public final tokenBucketSize:I

.field public final tokenRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->serviceType:I

    iput p2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenRate:I

    iput p3, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    iput p4, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    iput p5, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->latency:I

    iput p6, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->delayVariation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->serviceType:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->serviceType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenRate:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenRate:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->latency:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->latency:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->delayVariation:I

    iget v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->delayVariation:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public toArray()[I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->serviceType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenRate:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->latency:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->delayVariation:I

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->latency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;->delayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

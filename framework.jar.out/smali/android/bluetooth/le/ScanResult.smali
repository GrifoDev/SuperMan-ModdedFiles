.class public final Landroid/bluetooth/le/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_TRUNCATED:I = 0x2

.field private static final ET_CONNECTABLE_MASK:I = 0x1

.field private static final ET_LEGACY_MASK:I = 0x10

.field public static final PERIODIC_INTERVAL_NOT_PRESENT:I = 0x0

.field public static final PHY_UNUSED:I = 0x0

.field public static final SID_NOT_PRESENT:I = 0xff

.field public static final TX_POWER_NOT_PRESENT:I = 0x7f


# instance fields
.field private mAdvertisingSid:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventType:I

.field private mPeriodicAdvertisingInterval:I

.field private mPrimaryPhy:I

.field private mRssi:I

.field private mScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private mSecondaryPhy:I

.field private mTimestampNanos:J

.field private mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/ScanResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    iput-object p9, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iput-wide p10, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iput-wide p4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    const/16 v0, 0x11

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    const/16 v0, 0x7f

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    iget-wide v6, v0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    iget v4, v0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAdvertisingSid()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    return v0
.end method

.method public getDataStatus()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getPeriodicAdvertisingInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnectable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLegacy()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScanResult{device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", scanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", advertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", periodicAdvertisingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

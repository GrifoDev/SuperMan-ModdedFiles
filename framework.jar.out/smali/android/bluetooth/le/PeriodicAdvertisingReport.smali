.class public final Landroid/bluetooth/le/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/PeriodicAdvertisingReport$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_INCOMPLETE_TRUNCATED:I = 0x2


# instance fields
.field private data:Landroid/bluetooth/le/ScanRecord;

.field private dataStatus:I

.field private rssi:I

.field private syncHandle:I

.field private timestampNanos:J

.field private txPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILandroid/bluetooth/le/ScanRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    iput-object p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    :cond_0
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

    invoke-virtual {p0}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    iget v4, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    iget v4, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    iget v4, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    iget v4, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    iget-wide v6, v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getData()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public getDataStatus()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    return v0
.end method

.method public getSyncHandle()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PeriodicAdvertisingReport{syncHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

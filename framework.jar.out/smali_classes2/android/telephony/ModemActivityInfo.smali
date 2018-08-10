.class public Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private final mEnergyUsed:I

.field private final mIdleTimeMs:I

.field private final mRxTimeMs:I

.field private final mSleepTimeMs:I

.field private final mTimestamp:J

.field private final mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[III)V
    .locals 5

    const/4 v3, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-eqz p5, :cond_0

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    array-length v1, p5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_0
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    iput p7, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return-void
.end method

.method private isEmpty()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyUsed()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return v0
.end method

.method public getIdleTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return v0
.end method

.method public getRxTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return v0
.end method

.method public getSleepTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTxTimeMillis()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-direct {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-wide v2, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

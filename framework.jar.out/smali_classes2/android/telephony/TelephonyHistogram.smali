.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "TelephonyHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyHistogram$1;
    }
.end annotation


# static fields
.field private static final ABSENT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRESENT:I = 0x1

.field private static final RANGE_CALCULATION_COUNT:I = 0xa

.field public static final TELEPHONY_CATEGORY_RIL:I = 0x1


# instance fields
.field private mAverageTimeMs:I

.field private final mBucketCount:I

.field private final mBucketCounters:[I

.field private final mBucketEndPoints:[I

.field private final mCategory:I

.field private final mId:I

.field private mInitialTimings:[I

.field private mMaxTimeMs:I

.field private mMinTimeMs:I

.field private mSampleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid number of buckets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v0, p3, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    return-void
.end method

.method private addToBucketCounter([I[II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-gt p3, v1, :cond_0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    return-void
.end method

.method private calculateBucketEndPoints([I)V
    .locals 5

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    div-int/2addr v3, v4

    add-int v0, v2, v3

    add-int/lit8 v2, v1, -0x1

    aput v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDeepCopyOfArray([I)[I
    .locals 3

    const/4 v2, 0x0

    array-length v1, p1

    new-array v0, v1, [I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method

.method private getInitialTimings()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    return-object v0
.end method


# virtual methods
.method public addTimeTaken(I)V
    .locals 9

    const/16 v8, 0xa

    const/4 v5, 0x0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_2

    :cond_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-nez v1, :cond_1

    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aput p1, v1, v5

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    :goto_1
    return-void

    :cond_1
    new-array v1, v8, [I

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    if-ge p1, v1, :cond_3

    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    :cond_3
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    if-le p1, v1, :cond_4

    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    :cond_4
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    int-to-long v4, v1

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v6, v1

    mul-long/2addr v4, v6

    int-to-long v6, p1

    add-long v2, v4, v6

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v4, v1

    div-long v4, v2, v4

    long-to-int v1, v4

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v1, v8, :cond_5

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v4, v4, -0x1

    aput p1, v1, v4

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ne v1, v8, :cond_7

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v4, v4, -0x1

    aput p1, v1, v4

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_6

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v5, v5, v0

    invoke-direct {p0, v1, v4, v5}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v1, v4, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    return v0
.end method

.method public getBucketCount()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    return v0
.end method

.method public getBucketCounters()[I
    .locals 5

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [I

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    new-array v1, v3, [I

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v1, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v3}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v3

    return-object v3
.end method

.method public getBucketEndPoints()[I
    .locals 3

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v1

    return-object v1
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    return v0
.end method

.method public getMaxTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    return v0
.end method

.method public getMinTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Histogram id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Time(ms): min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " avg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, " Interval Endpoints:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, " Interval counters:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method

.class public Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mFenceId:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMinDistance:I

.field private mMinTime:I

.field private mMode:I

.field private mRadius:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 5

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    return-void
.end method

.method private setAttribute()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    const-string/jumbo v4, "Mode"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "Action"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "SemContextSLocationCoreAttribute"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAttribute() mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Mode"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Action"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x2f

    invoke-super {p0, v4, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v4, v6, :cond_0

    new-array v1, v8, [D

    const/4 v4, 0x4

    new-array v2, v4, [I

    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v4, v2, v8

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v4, v2, v9

    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v4, v8, :cond_1

    new-array v2, v6, [I

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    new-array v2, v9, [I

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    aput v4, v2, v8

    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    new-array v2, v8, [I

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    aput v4, v2, v7

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    aput v4, v2, v6

    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "SemContextSLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    new-array v1, v8, [D

    new-array v2, v6, [I

    new-array v3, v6, [J

    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    aput v4, v2, v7

    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v4, v3, v7

    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v4, "LongType"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "SemContextSLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-le v0, v5, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    :cond_2
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_5

    :cond_4
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_6

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_7

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_8

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_9

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_a

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_b

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum distance is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_c

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_d

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_d
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_f

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    :cond_f
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_10
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    :cond_11
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Latitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_12
    return v5
.end method

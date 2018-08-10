.class public Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;,
        Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mBatchingSize:I

.field private mFenceId:I

.field private mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D

.field private mMinDistance:I

.field private mMinTime:I

.field private mMode:I

.field private mRadius:I

.field private mRequestId:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_1

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    goto :goto_0
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIJIIDF)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    move-wide v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;-><init>(JIIDF)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IILandroid/location/Location;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private setAttribute()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string/jumbo v6, "Mode"

    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "Action"

    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "SemContextLocationCoreAttribute"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAttribute() mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Mode"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Action"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x2f

    invoke-super {p0, v6, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v6, v8, :cond_0

    new-array v1, v10, [D

    const/4 v6, 0x4

    new-array v3, v6, [I

    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v6, v3, v8

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    aput v6, v3, v10

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v6, v3, v11

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v6, v10, :cond_1

    new-array v3, v8, [I

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    new-array v3, v11, [I

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v6, v3, v8

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    aput v6, v3, v10

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_2
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_3

    new-array v3, v10, [I

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    aput v6, v3, v9

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    aput v6, v3, v8

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v6, "SemContextLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    new-array v1, v10, [D

    new-array v3, v8, [I

    new-array v4, v8, [J

    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    aput v6, v3, v9

    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    aput-wide v6, v4, v9

    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v6, "LongType"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "SemContextLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x10

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_6

    :cond_5
    new-array v3, v11, [I

    new-array v4, v8, [J

    new-array v1, v8, [D

    new-array v2, v8, [F

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v6, v3, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    aput v6, v3, v8

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    aput v6, v3, v10

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v6, v6, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    aput-wide v6, v4, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v6, v6, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    aput-wide v6, v1, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    aput v6, v2, v9

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v6, "LongType"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v6, "FloatType"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_7

    new-array v3, v8, [I

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v6, v3, v9

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x13

    if-ne v6, v7, :cond_8

    new-array v3, v8, [I

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    aput v6, v3, v9

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_9

    new-array v4, v8, [J

    new-array v1, v11, [D

    new-array v2, v11, [F

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v4, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v1, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v1, v8

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v1, v10

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getSpeed()F

    move-result v6

    aput v6, v2, v9

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v6

    aput v6, v2, v8

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    aput v6, v2, v10

    const-string/jumbo v6, "StringType"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v6, "FloatType"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "SemContextLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    const/16 v3, 0x10

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-le v0, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_9

    :cond_2
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    :cond_4
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_7

    :cond_6
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-eq v0, v3, :cond_8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_a

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_b

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_c

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_d

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_d
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_e

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_f

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Minimum distance is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_f
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_10

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Minimum time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_10
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_11

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_13

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    :cond_13
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_14
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_15

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_16

    :cond_15
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Latitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_16
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    if-gez v0, :cond_17

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "RequestId is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_17
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    if-gez v0, :cond_18

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "BatchingSize is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_18
    return v5
.end method

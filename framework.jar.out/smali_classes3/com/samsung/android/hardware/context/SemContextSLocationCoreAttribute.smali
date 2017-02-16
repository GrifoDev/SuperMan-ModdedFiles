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

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 107
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 108
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 106
    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 241
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 242
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 243
    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 244
    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 245
    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 246
    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 240
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 164
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 165
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 166
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 163
    return-void
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 136
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 137
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 138
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 139
    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 140
    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 141
    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 142
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 143
    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 135
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 214
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 215
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 216
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 217
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 213
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 188
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 189
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 190
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 191
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 192
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 79
    return-void
.end method

.method private setAttribute()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "attribute":Landroid/os/Bundle;
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 390
    :goto_0
    const-string/jumbo v4, "Mode"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 391
    const-string/jumbo v4, "Action"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 392
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

    .line 393
    const/16 v4, 0x2f

    invoke-super {p0, v4, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 333
    return-void

    .line 341
    :pswitch_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v4, v6, :cond_0

    .line 342
    new-array v1, v8, [D

    .line 343
    .local v1, "doubleType":[D
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 344
    .local v2, "intType":[I
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    .line 345
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    .line 346
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 347
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    .line 348
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v4, v2, v8

    .line 349
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v4, v2, v9

    .line 350
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 351
    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 352
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v4, v8, :cond_1

    .line 353
    new-array v2, v6, [I

    .line 354
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 355
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 356
    .end local v2    # "intType":[I
    :cond_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 357
    new-array v2, v9, [I

    .line 358
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 359
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    .line 360
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    aput v4, v2, v8

    .line 361
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 362
    .end local v2    # "intType":[I
    :cond_2
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 363
    new-array v2, v8, [I

    .line 364
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    aput v4, v2, v7

    .line 365
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    aput v4, v2, v6

    .line 366
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 368
    .end local v2    # "intType":[I
    :cond_3
    const-string/jumbo v4, "SemContextSLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :pswitch_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 373
    new-array v1, v8, [D

    .line 374
    .restart local v1    # "doubleType":[D
    new-array v2, v6, [I

    .line 375
    .restart local v2    # "intType":[I
    new-array v3, v6, [J

    .line 376
    .local v3, "longType":[J
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    .line 377
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    .line 378
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    aput v4, v2, v7

    .line 379
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v4, v3, v7

    .line 380
    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 381
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 382
    const-string/jumbo v4, "LongType"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 384
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    .end local v3    # "longType":[J
    :cond_4
    const-string/jumbo v4, "SemContextSLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 256
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    .line 257
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-le v0, v5, :cond_1

    .line 258
    :cond_0
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v4

    .line 262
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    .line 263
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    .line 264
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    .line 265
    :cond_2
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v4

    .line 268
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    .line 269
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    .line 270
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_5

    .line 271
    :cond_4
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v4

    .line 276
    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_6

    .line 277
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v4

    .line 281
    :cond_6
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_7

    .line 282
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v4

    .line 286
    :cond_7
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_8

    .line 287
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v4

    .line 291
    :cond_8
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_9

    .line 292
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v4

    .line 296
    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_a

    .line 297
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v4

    .line 301
    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_b

    .line 302
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum distance is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v4

    .line 306
    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_c

    .line 307
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v4

    .line 311
    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_d

    .line 312
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v4

    .line 316
    :cond_d
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 317
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v4

    .line 321
    :cond_e
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_f

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    .line 322
    :cond_f
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v4

    .line 326
    :cond_10
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    .line 327
    :cond_11
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Latitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v4

    .line 330
    :cond_12
    return v5
.end method

.class public Landroid/hardware/scontext/SContextSLocationCoreAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSLocationCoreAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mFenceId:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMin_Ditance:I

.field private mMin_Time:I

.field private mMode:I

.field private mRadius:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 48
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 47
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

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 77
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 78
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 79
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 76
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

    .line 211
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 212
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 213
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 214
    iput-wide p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 215
    iput-wide p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 216
    iput p7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 217
    iput-wide p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 218
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 211
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

    .line 133
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 134
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 135
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 136
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 137
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 133
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

    .line 104
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 106
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 107
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 108
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 109
    iput p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 110
    iput p9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 111
    iput p10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 112
    iput-wide p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 113
    iput-wide p6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 114
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 105
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

    .line 183
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 184
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 185
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 186
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 187
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 188
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 183
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

    .line 157
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 158
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 159
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 160
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 161
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 162
    iput p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 163
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 157
    return-void
.end method

.method private setAttribute()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 305
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "attribute":Landroid/os/Bundle;
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    packed-switch v5, :pswitch_data_0

    .line 359
    :goto_0
    const-string/jumbo v5, "Mode"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string/jumbo v5, "Action"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string/jumbo v5, "SContextSLocationCoreAttribute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAttribute() mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Mode"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Action"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v5, 0x2f

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 301
    return-void

    .line 310
    :pswitch_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v8, :cond_0

    .line 311
    new-array v1, v10, [D

    .line 312
    .local v1, "doubleType":[D
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 313
    .local v2, "intType":[I
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 314
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 315
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 316
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    .line 317
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v5, v2, v10

    .line 318
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v5, v2, v11

    .line 319
    const-string/jumbo v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 320
    const-string/jumbo v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 321
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v10, :cond_1

    .line 322
    new-array v2, v8, [I

    .line 323
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 324
    const-string/jumbo v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 325
    .end local v2    # "intType":[I
    :cond_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 326
    new-array v2, v11, [I

    .line 327
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 328
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    .line 329
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    aput v5, v2, v10

    .line 330
    const-string/jumbo v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 331
    .end local v2    # "intType":[I
    :cond_2
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 332
    new-array v2, v10, [I

    .line 333
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    aput v5, v2, v9

    .line 334
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    aput v5, v2, v8

    .line 335
    const-string/jumbo v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 337
    .end local v2    # "intType":[I
    :cond_3
    const-string/jumbo v5, "SContextSLocationCoreAttribute"

    const-string/jumbo v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :pswitch_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 342
    new-array v1, v10, [D

    .line 343
    .restart local v1    # "doubleType":[D
    new-array v2, v8, [I

    .line 344
    .restart local v2    # "intType":[I
    new-array v3, v8, [J

    .line 345
    .local v3, "longType":[J
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 346
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 347
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    aput v5, v2, v9

    .line 348
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v6, v3, v9

    .line 349
    const-string/jumbo v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 350
    const-string/jumbo v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 351
    const-string/jumbo v5, "LongType"

    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 353
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    .end local v3    # "longType":[J
    :cond_4
    const-string/jumbo v5, "SContextSLocationCoreAttribute"

    const-string/jumbo v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    nop

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

    .line 224
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    .line 225
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-le v0, v5, :cond_1

    .line 226
    :cond_0
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v4

    .line 230
    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    .line 231
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    .line 232
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    .line 233
    :cond_2
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v4

    .line 236
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    .line 237
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    .line 238
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_5

    .line 239
    :cond_4
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v4

    .line 244
    :cond_5
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_6

    .line 245
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v4

    .line 249
    :cond_6
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_7

    .line 250
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v4

    .line 254
    :cond_7
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_8

    .line 255
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v4

    .line 259
    :cond_8
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_9

    .line 260
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v4

    .line 264
    :cond_9
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_a

    .line 265
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v4

    .line 269
    :cond_a
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    if-gez v0, :cond_b

    .line 270
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimun distnace is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v4

    .line 274
    :cond_b
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    if-gez v0, :cond_c

    .line 275
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimun time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v4

    .line 279
    :cond_c
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_d

    .line 280
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v4

    .line 284
    :cond_d
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 285
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v4

    .line 289
    :cond_e
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_f

    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    .line 290
    :cond_f
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v4

    .line 294
    :cond_10
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    .line 295
    :cond_11
    const-string/jumbo v0, "SContextSLocationCoreAttribute"

    const-string/jumbo v1, "Latitidue is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v4

    .line 298
    :cond_12
    return v5
.end method

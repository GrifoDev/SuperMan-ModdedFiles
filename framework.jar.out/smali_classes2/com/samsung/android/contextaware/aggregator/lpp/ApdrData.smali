.class public Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
.super Ljava/lang/Object;
.source "ApdrData.java"


# instance fields
.field public StepCount:D

.field public TimeNoMove:J

.field public acc:[D

.field public apdrDevicePosition:I

.field public apdrForwardingVector:D

.field public apdrHeading:D

.field public att:[D

.field public bearing:D

.field public carryPos:I

.field public gyro:[D

.field public mag:[D

.field public movingStatus:I

.field public stepFlag:D

.field public stepLength:D

.field public systemtime:J

.field public utctime:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->acc:[D

    new-array v1, v4, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    const/4 v1, 0x4

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    new-array v1, v4, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->att:[D

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->acc:[D

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->att:[D

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aput-wide v2, v1, v4

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->acc:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->att:[D

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V
    .locals 5

    const/4 v4, 0x3

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->acc:[D

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->acc:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->att:[D

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->att:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aget-wide v2, v2, v4

    aput-wide v2, v1, v4

    iget v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    iget-wide v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    iget v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    return-void
.end method

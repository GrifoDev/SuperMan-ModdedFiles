.class public Landroid/metrics/MetricsReader$Event;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field mData:Ljava/lang/Object;

.field mPid:I

.field mTimeMillis:J

.field mUid:I


# direct methods
.method public constructor <init>(JIILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    iput p3, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    iput p4, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    iput-object p5, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/util/EventLog$Event;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getUid()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method

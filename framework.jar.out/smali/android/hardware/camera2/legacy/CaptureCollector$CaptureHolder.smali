.class Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
.super Ljava/lang/Object;
.source "CaptureCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CaptureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mFailedJpeg:Z

.field private mFailedPreview:Z

.field private mHasStarted:Z

.field private final mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mPreviewCompleted:Z

.field private mReceivedFlags:I

.field private final mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mTimestamp:J

.field public final needsJpeg:Z

.field public final needsPreview:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/CaptureCollector;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    return-wide v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    iput v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCompleted()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isJpegCompleted()Z
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewCompleted()Z
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setJpegFailed()V
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegProduced called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public setJpegTimestamp(J)V
    .locals 5

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegTimestamp called for capture with no jpeg targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegTimestamp called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public setPreviewFailed()V
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public setPreviewTimestamp(J)V
    .locals 5

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewTimestamp called for capture with no preview targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewTimestamp called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    return-void
.end method

.method public tryComplete()V
    .locals 9

    const/4 v8, 0x1

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap0(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap1(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/legacy/RequestHolder;->jpegType(Landroid/view/Surface;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CaptureCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected exception when querying Surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :try_start_1
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

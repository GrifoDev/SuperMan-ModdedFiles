.class public Lsun/net/ProgressSource;
.super Ljava/lang/Object;
.source "ProgressSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ProgressSource$State;
    }
.end annotation


# instance fields
.field private connected:Z

.field private contentType:Ljava/lang/String;

.field private expected:J

.field private lastProgress:J

.field private method:Ljava/lang/String;

.field private progress:J

.field private progressMonitor:Lsun/net/ProgressMonitor;

.field private state:Lsun/net/ProgressSource$State;

.field private threshold:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;J)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    iput-wide v2, p0, Lsun/net/ProgressSource;->lastProgress:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ProgressSource;->connected:Z

    const/16 v0, 0x2000

    iput v0, p0, Lsun/net/ProgressSource;->threshold:I

    iput-object p1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    iput-object p2, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    const-string/jumbo v0, "content/unknown"

    iput-object v0, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    iput-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    iput-wide v2, p0, Lsun/net/ProgressSource;->lastProgress:J

    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    sget-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0}, Lsun/net/ProgressMonitor;->getProgressUpdateThreshold()I

    move-result v0

    iput v0, p0, Lsun/net/ProgressSource;->threshold:I

    return-void
.end method


# virtual methods
.method public beginTracking()V
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->registerSource(Lsun/net/ProgressSource;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    sget-object v0, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    return-void
.end method

.method public connected()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lsun/net/ProgressSource;->connected:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lsun/net/ProgressSource;->connected:Z

    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public finishTracking()V
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->unregisterSource(Lsun/net/ProgressSource;)V

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()J
    .locals 2

    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    return-wide v0
.end method

.method public getState()Lsun/net/ProgressSource$State;
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content-type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressSource;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress(JJ)V
    .locals 7

    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    iput-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    iput-wide p1, p0, Lsun/net/ProgressSource;->progress:J

    iput-wide p3, p0, Lsun/net/ProgressSource;->expected:J

    invoke-virtual {p0}, Lsun/net/ProgressSource;->connected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    :goto_0
    iget-wide v0, p0, Lsun/net/ProgressSource;->lastProgress:J

    iget v2, p0, Lsun/net/ProgressSource;->threshold:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lsun/net/ProgressSource;->progress:J

    iget v4, p0, Lsun/net/ProgressSource;->threshold:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/ProgressSource;->progressMonitor:Lsun/net/ProgressMonitor;

    invoke-virtual {v0, p0}, Lsun/net/ProgressMonitor;->updateProgress(Lsun/net/ProgressSource;)V

    :cond_0
    iget-wide v0, p0, Lsun/net/ProgressSource;->expected:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    iget-wide v2, p0, Lsun/net/ProgressSource;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lsun/net/ProgressSource;->progress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/net/ProgressSource;->close()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    iput-object v0, p0, Lsun/net/ProgressSource;->state:Lsun/net/ProgressSource$State;

    goto :goto_0
.end method

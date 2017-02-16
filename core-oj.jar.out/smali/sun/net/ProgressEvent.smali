.class public Lsun/net/ProgressEvent;
.super Ljava/util/EventObject;
.source "ProgressEvent.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private expected:J

.field private method:Ljava/lang/String;

.field private progress:J

.field private state:Lsun/net/ProgressSource$State;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V
    .locals 0
    .param p1, "source"    # Lsun/net/ProgressSource;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "state"    # Lsun/net/ProgressSource$State;
    .param p6, "progress"    # J
    .param p8, "expected"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 55
    iput-object p2, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

    .line 56
    iput-object p3, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    .line 58
    iput-wide p6, p0, Lsun/net/ProgressEvent;->progress:J

    .line 59
    iput-wide p8, p0, Lsun/net/ProgressEvent;->expected:J

    .line 60
    iput-object p5, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    .line 53
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lsun/net/ProgressEvent;->expected:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lsun/net/ProgressEvent;->progress:J

    return-wide v0
.end method

.method public getState()Lsun/net/ProgressSource$State;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
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

    iget-object v1, p0, Lsun/net/ProgressEvent;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressEvent;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ProgressEvent;->state:Lsun/net/ProgressSource$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, ", content-type="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lsun/net/ProgressEvent;->contentType:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, ", progress="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-wide v2, p0, Lsun/net/ProgressEvent;->progress:J

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, ", expected="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-wide v2, p0, Lsun/net/ProgressEvent;->expected:J

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "]"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;
.super Ljava/lang/Object;


# instance fields
.field private dormant:J

.field private expired:J

.field private interval:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->interval:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->dormant:J

    iput-wide p5, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->expired:J

    return-void
.end method


# virtual methods
.method public getDormant()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->dormant:J

    return-wide v0
.end method

.method public getExpired()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->expired:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->interval:J

    return-wide v0
.end method

.method public setDormant(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->dormant:J

    return-void
.end method

.method public setExpired(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->expired:J

    return-void
.end method

.method public setInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->interval:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliveResponse [interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dormant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->dormant:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;->expired:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

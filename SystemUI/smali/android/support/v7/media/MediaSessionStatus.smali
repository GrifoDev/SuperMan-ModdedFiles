.class public final Landroid/support/v7/media/MediaSessionStatus;
.super Ljava/lang/Object;
.source "MediaSessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaSessionStatus$Builder;
    }
.end annotation


# instance fields
.field final mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/MediaSessionStatus;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaSessionStatus;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private static sessionStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "active"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ended"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "invalidated"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionState"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isQueuePaused()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "queuePaused"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaSessionStatus{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v1, " ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", sessionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getSessionState()I

    move-result v2

    invoke-static {v2}, Landroid/support/v7/media/MediaSessionStatus;->sessionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", queuePaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->isQueuePaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "LibQmg.java"


# instance fields
.field private fname:Ljava/lang/String;

.field private handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    return-void
.end method

.method private alreadyOpen()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkSupportQmg()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/power/LibQmg;->qmgCheckSupportQmg()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native qmgCheckSupportQmg()I
.end method

.method public static native qmgClose(J)I
.end method

.method public static native qmgGetCurrentFrame(J)I
.end method

.method public static native qmgGetDelayTime(J)I
.end method

.method public static native qmgGetHeight(J)I
.end method

.method public static native qmgGetWidth(J)I
.end method

.method public static native qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)J
.end method

.method public static native qmgSetCurrentFrame(JI)I
.end method


# virtual methods
.method public close()I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/power/LibQmg;->alreadyOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ensureQmgHandle()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    :cond_0
    return-void
.end method

.method public getCurrentFrame()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetCurrentFrame(J)I

    move-result v0

    return v0
.end method

.method public getDelayTime()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v2, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v2, v3}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x42

    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    move-result v0

    return v0
.end method

.method public loadFrame(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setCurrentFrame(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/server/power/LibQmg;->qmgSetCurrentFrame(JI)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

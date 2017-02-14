.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
.super Ljava/lang/Object;
.source "BNRFile.java"


# instance fields
.field private fd:Ljava/io/FileDescriptor;

.field private isExternal:Z

.field private path:Ljava/lang/String;

.field private size:J

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    iput-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v0, v1, 0xd

    if-lez v0, :cond_0

    long-to-double v2, p3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long p3, v2

    :cond_0
    iput-wide p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJLjava/io/FileDescriptor;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    iput-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v2, v3, 0xd

    if-lez v2, :cond_0

    long-to-double v4, p3

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long p3, v4

    :cond_0
    iput-wide p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fd:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-wide v0
.end method

.method public getisExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return v0
.end method

.method public setFileUri(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v0, v1, 0xd

    if-lez v0, :cond_0

    long-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long p1, v2

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-void
.end method

.method public setisExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return-void
.end method

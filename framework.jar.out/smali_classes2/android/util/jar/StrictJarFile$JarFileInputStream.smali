.class final Landroid/util/jar/StrictJarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private final entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    :goto_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_1
    return v0

    :cond_2
    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v4
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    iget-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-eq v0, v4, :cond_3

    move v1, v0

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    :cond_1
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    :goto_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v2}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_2
    return v0

    :cond_3
    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_0

    :cond_4
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v2}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v4
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method

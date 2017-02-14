.class Ljava/util/jar/JarVerifier$VerifierStream;
.super Ljava/io/InputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierStream"
.end annotation


# instance fields
.field private is:Ljava/io/InputStream;

.field private jv:Ljava/util/jar/JarVerifier;

.field private mev:Lsun/security/util/ManifestEntryVerifier;

.field private numLeft:J


# direct methods
.method constructor <init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    new-instance v0, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct {v0, p1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v0, p2, v1}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    return-void
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v6, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    :cond_1
    return v0

    :cond_2
    return v6
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    long-to-int p3, v2

    :cond_1
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v7, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move v3, v8

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    :cond_2
    return v1

    :cond_3
    return v8
.end method

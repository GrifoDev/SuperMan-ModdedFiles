.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private final doVerify:Z

.field private first:Ljava/util/jar/JarEntry;

.field private jv:Ljava/util/jar/JarVerifier;

.field private man:Ljava/util/jar/Manifest;

.field private mev:Lsun/security/util/ManifestEntryVerifier;

.field private tryManifest:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean p2, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    return-void
.end method

.method private checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/util/jar/JarInputStream;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    iget-boolean v1, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/jar/JarVerifier;

    invoke-direct {v1, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    new-instance v1, Lsun/security/util/ManifestEntryVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    invoke-direct {v1, v2}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    return-object v1

    :cond_1
    return-object p1
.end method

.method private getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x2000

    new-array v1, v3, [B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    array-length v3, v1

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    :cond_0
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_2

    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    iget-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v3, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    iput-object v3, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    :cond_3
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_1
.end method

.method public getNextJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    :goto_0
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v5, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    :cond_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# static fields
.field private static final JAR_MAGIC:I = 0xcafe


# instance fields
.field private firstEntry:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "man"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method private static get16([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static hasMagic([B)Z
    .locals 4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-static {p0, v1}, Ljava/util/jar/JarOutputStream;->get16([BI)I

    move-result v2

    const v3, 0xcafe

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Ljava/util/jar/JarOutputStream;->get16([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static set16([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-boolean v2, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/jar/JarOutputStream;->hasMagic([B)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v3, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    :cond_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-array v0, v4, [B

    :goto_1
    const v2, 0xcafe

    invoke-static {v0, v3, v2}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v3}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    goto :goto_0

    :cond_2
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v0, v1

    goto :goto_1
.end method

.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field crc:J

.field csize:J

.field dataOffset:J

.field extra:[B

.field flag:I

.field method:I

.field name:Ljava/lang/String;

.field size:J

.field time:J


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .locals 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    iput p9, p0, Ljava/util/zip/ZipEntry;->method:I

    int-to-long v0, p10

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iput-object p11, p0, Ljava/util/zip/ZipEntry;->extra:[B

    iput-wide p12, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->time:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-void
.end method

.method private static dosToJavaTime(J)J
    .locals 10

    const-wide/16 v6, 0x1f

    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x19

    shr-long v2, p0, v1

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x50

    add-long/2addr v2, v4

    long-to-int v1, v2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x10

    shr-long v4, p0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    const/16 v4, 0xb

    shr-long v4, p0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x5

    shr-long v6, p0, v5

    const-wide/16 v8, 0x3f

    and-long/2addr v6, v8

    long-to-int v5, v6

    const/4 v6, 0x1

    shl-long v6, p0, v6

    const-wide/16 v8, 0x3e

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private static javaToDosTime(J)J
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v1, v2, 0x76c

    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    const-wide/32 v2, 0x210000

    return-wide v2

    :cond_0
    add-int/lit16 v2, v1, -0x7bc

    shl-int/lit8 v2, v2, 0x19

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-long v2, v2

    return-wide v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v3, :cond_0

    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v1

    :cond_0
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getDataOffset()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Ljava/util/zip/ZipEntry;->time:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipEntry;->dosToJavaTime(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 1

    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-void
.end method

.method public setExtra([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid extra field length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-void
.end method

.method public setMethod(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    return-void
.end method

.method public setTime(J)V
    .locals 3

    invoke-static {p1, p2}, Ljava/util/zip/ZipEntry;->javaToDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

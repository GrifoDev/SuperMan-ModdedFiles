.class public Lsun/nio/ch/FileKey;
.super Ljava/lang/Object;
.source "FileKey.java"


# instance fields
.field private st_dev:J

.field private st_ino:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;
    .locals 3

    new-instance v0, Lsun/nio/ch/FileKey;

    invoke-direct {v0}, Lsun/nio/ch/FileKey;-><init>()V

    :try_start_0
    invoke-direct {v0, p0}, Lsun/nio/ch/FileKey;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private native init(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_0

    return v7

    :cond_0
    instance-of v1, p1, Lsun/nio/ch/FileKey;

    if-nez v1, :cond_1

    return v6

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/FileKey;

    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_dev:J

    iget-wide v4, v0, Lsun/nio/ch/FileKey;->st_dev:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_ino:J

    iget-wide v4, v0, Lsun/nio/ch/FileKey;->st_ino:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_2
    return v6

    :cond_3
    return v7
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lsun/nio/ch/FileKey;->st_dev:J

    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_dev:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Lsun/nio/ch/FileKey;->st_ino:J

    iget-wide v4, p0, Lsun/nio/ch/FileKey;->st_ino:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

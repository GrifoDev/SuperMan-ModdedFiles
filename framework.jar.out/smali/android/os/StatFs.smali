.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private mStat:Landroid/system/StructStatVfs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    .line 38
    return-void
.end method

.method private static doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAvailableBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    long-to-int v0, v0

    return v0
.end method

.method public getAvailableBlocksLong()J
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public getAvailableBytes()J
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlockCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockCountLong()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public getBlockSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bsize:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockSizeLong()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bsize:J

    return-wide v0
.end method

.method public getFreeBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    long-to-int v0, v0

    return v0
.end method

.method public getFreeBlocksLong()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, v2, Landroid/system/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public restat(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    .line 55
    return-void
.end method

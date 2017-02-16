.class public Landroid/database/sqlite/SQLiteExceptionLog;
.super Ljava/lang/Object;
.source "SQLiteExceptionLog.java"


# instance fields
.field errCode:I

.field errCodeString:Ljava/lang/String;

.field errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteExceptionLog;->parseCode(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    .line 39
    iput-object p2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private needMemoryInfo()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0xc0a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x60e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needMountInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 86
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 85
    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v2, 0x1b0a

    if-eq v1, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method private needStorageInfo()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x130a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/16 v1, 0x90e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FormatSize(J)Ljava/lang/String;
    .locals 5
    .param p1, "size"    # J

    .prologue
    const-wide/16 v2, 0x400

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "suffix":Ljava/lang/String;
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 185
    const-string/jumbo v0, "KB"

    .line 186
    .local v0, "suffix":Ljava/lang/String;
    div-long/2addr p1, v2

    .line 187
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 188
    const-string/jumbo v0, "MB"

    .line 189
    div-long/2addr p1, v2

    .line 192
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 175
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 177
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v4, v6

    .line 179
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public getMajorCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-gez v0, :cond_0

    .line 68
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    return v0

    .line 70
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinorCode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    if-gez v0, :cond_0

    .line 75
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    return v0

    .line 77
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 166
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 168
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 170
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "Causedby"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "l":Ljava/lang/String;
    const-string/jumbo v0, "\n#################################################################\n"

    .line 95
    .local v0, "l":Ljava/lang/String;
    iget v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCodeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#################################################################"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0

    .line 98
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object p1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    .line 102
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Caused By : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\t("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public parseCode(ILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p2, :cond_0

    const-string/jumbo v4, "####"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    :cond_0
    :goto_0
    return p1

    .line 44
    :cond_1
    const-string/jumbo v4, "code "

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "startIndex":I
    if-lez v3, :cond_0

    .line 46
    add-int/lit8 v3, v3, 0x5

    .line 47
    move v0, v3

    .line 48
    .local v0, "endIndex":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "errString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 56
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public setErrString(Ljava/lang/String;)V
    .locals 0
    .param p1, "errs"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/database/sqlite/SQLiteExceptionLog;->errCodeString:Ljava/lang/String;

    .line 62
    return-void
.end method

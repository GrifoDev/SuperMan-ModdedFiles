.class public final Lcom/android/internal/os/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    .line 47
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    return-void
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 106
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 107
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AtomicFile"

    const-string/jumbo v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 94
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AtomicFile"

    const-string/jumbo v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openAppend()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 147
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 153
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 154
    .local v4, "pos":I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 155
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 157
    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 160
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 174
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 163
    return-object v2

    .line 165
    :cond_1
    add-int/2addr v4, v0

    .line 166
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 167
    array-length v6, v2

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_0

    .line 168
    add-int v6, v4, v1

    new-array v3, v6, [B

    .line 169
    .local v3, "newData":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    move-object v2, v3

    goto :goto_0

    .line 173
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_0
    move-exception v6

    .line 174
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 173
    throw v6
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 58
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const-string/jumbo v4, "AtomicFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    const-string/jumbo v6, " to backup file "

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 70
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "str":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v3, "str":Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    .line 65
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 73
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 78
    const/16 v5, 0x1f9

    .line 76
    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 81
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 82
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public truncate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t append "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

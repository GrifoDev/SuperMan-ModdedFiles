.class public Lcom/absolute/android/persistservice/ah;
.super Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/File;

.field private c:Lcom/absolute/android/persistservice/v;

.field private d:Z

.field private e:Ljava/io/FileInputStream;

.field private f:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    .line 31
    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    .line 32
    iput-object v1, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    .line 46
    iput-object p3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    .line 48
    iput-object p1, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    .line 59
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 187
    :goto_1
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException in close() for Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ah;->close()V

    .line 201
    invoke-super {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->finalize()V

    .line 202
    return-void
.end method

.method public read([B)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 144
    :goto_1
    return v0

    .line 129
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException for read() from Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 142
    goto :goto_1
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    .line 166
    :goto_1
    return-wide v0

    .line 154
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->e:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FileNotFoundException for skip() on Persisted File: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 165
    goto :goto_1

    :catch_1
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException for skip() on Persisted File: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v4, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 164
    goto :goto_1
.end method

.method public write([B)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    array-length v0, p1

    .line 94
    :goto_1
    return v0

    .line 79
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 93
    goto :goto_1

    :catch_1
    move-exception v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 92
    goto :goto_1
.end method

.method public writeWithCount([BII)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 119
    :goto_1
    return p3

    .line 104
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ah;->b:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ah;->d:Z

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ah;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v1

    .line 118
    goto :goto_1

    :catch_1
    move-exception v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/absolute/android/persistservice/ah;->c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v1

    .line 117
    goto :goto_1
.end method

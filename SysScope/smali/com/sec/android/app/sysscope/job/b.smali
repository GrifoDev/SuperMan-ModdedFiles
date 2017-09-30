.class public Lcom/sec/android/app/sysscope/job/b;
.super Lcom/sec/android/app/sysscope/engine/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/m;-><init>()V

    return-void
.end method

.method private c()Lcom/sec/android/app/sysscope/service/g;
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/mounts"

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->c:Lcom/sec/android/app/sysscope/service/g;

    const-string v2, "File system : There\'s no mount info"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sysscope/job/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :goto_1
    return-object v0

    :cond_0
    :try_start_5
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-le v3, v5, :cond_1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string v4, "rw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is mounted in rw mode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sysscope/job/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->c:Lcom/sec/android/app/sysscope/service/g;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v2

    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :goto_7
    throw v0

    :catch_7
    move-exception v2

    goto :goto_0

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v2

    goto :goto_5

    :catch_b
    move-exception v2

    goto :goto_4

    :catch_c
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/job/b;->c()Lcom/sec/android/app/sysscope/service/g;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Filesystem table info. scanner"

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/absolute/android/persistservice/t;
.super Lcom/absolute/android/persistence/IABTLogIterator$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/absolute/android/persistservice/v;

.field private b:I

.field private c:Ljava/io/File;

.field private d:J

.field private e:Z


# direct methods
.method protected constructor <init>(ILcom/absolute/android/persistservice/v;)V
    .locals 2

    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTLogIterator$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/t;->e:Z

    iput p1, p0, Lcom/absolute/android/persistservice/t;->b:I

    iput-object p2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v0, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/absolute/android/persistservice/t;->d:J

    return-void
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-wide v6, p0, Lcom/absolute/android/persistservice/t;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/io/BufferedReader;->skip(J)J

    const/4 v3, 0x0

    :goto_0
    if-lt v3, p2, :cond_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_2
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    :goto_3
    iget-wide v6, p0, Lcom/absolute/android/persistservice/t;->d:J

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v8, Lcom/absolute/android/persistservice/v;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/absolute/android/persistservice/t;->d:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got FileNotFoundException reading log file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget v6, p0, Lcom/absolute/android/persistservice/t;->b:I

    invoke-virtual {v5, v2, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got IO exception reading log file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public getNext(I)[Lcom/absolute/android/persistence/LogEntry;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-boolean v5, p0, Lcom/absolute/android/persistservice/t;->e:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_7

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    if-nez v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-eq v2, v8, :cond_5

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v6, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v1, p1}, Lcom/absolute/android/persistservice/t;->a(Ljava/util/ArrayList;I)Z

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/absolute/android/persistservice/t;->a(Ljava/util/ArrayList;I)Z

    move-result v2

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    iget-object v5, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/v;

    iget-object v6, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/absolute/android/persistservice/t;->c:Ljava/io/File;

    iput-wide v10, p0, Lcom/absolute/android/persistservice/t;->d:J

    goto :goto_3

    :cond_6
    iput-boolean v8, p0, Lcom/absolute/android/persistservice/t;->e:Z

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/absolute/android/persistence/LogEntry;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/absolute/android/persistence/LogEntry;

    goto :goto_1
.end method

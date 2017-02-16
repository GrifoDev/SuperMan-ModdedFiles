.class public Lsun/net/www/http/HttpCapture;
.super Ljava/lang/Object;
.source "HttpCapture.java"


# static fields
.field private static volatile capFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static volatile patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;

.field private incoming:Z

.field private out:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lsun/net/www/http/HttpCapture;->initialized:Z

    .line 61
    sput-object v1, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    .line 62
    sput-object v1, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/net/URL;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v5, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    .line 58
    iput-boolean v1, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    .line 59
    iput-object v5, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    .line 113
    iput-object p1, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    .line 115
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    .line 116
    iget-object v1, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/io/IOException;
    const-class v1, Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCapture(Ljava/net/URL;)Lsun/net/www/http/HttpCapture;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v8, 0x0

    .line 145
    invoke-static {}, Lsun/net/www/http/HttpCapture;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_0

    .line 146
    invoke-static {}, Lsun/net/www/http/HttpCapture;->init()V

    .line 148
    :cond_0
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    :cond_1
    return-object v8

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 153
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 154
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    sget-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "f":Ljava/lang/String;
    const-string/jumbo v7, "%d"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 158
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 160
    .local v5, "rand":Ljava/util/Random;
    :cond_3
    const-string/jumbo v7, "%d"

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "f2":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "fi":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 166
    .end local v1    # "f2":Ljava/lang/String;
    .end local v5    # "rand":Ljava/util/Random;
    :goto_1
    new-instance v7, Lsun/net/www/http/HttpCapture;

    invoke-direct {v7, v2, p0}, Lsun/net/www/http/HttpCapture;-><init>(Ljava/io/File;Ljava/net/URL;)V

    return-object v7

    .line 164
    .end local v2    # "fi":Ljava/io/File;
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "fi":Ljava/io/File;
    goto :goto_1

    .line 152
    .end local v0    # "f":Ljava/lang/String;
    .end local v2    # "fi":Ljava/io/File;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_6
    return-object v8
.end method

.method private static declared-synchronized init()V
    .locals 10

    .prologue
    const-class v8, Lsun/net/www/http/HttpCapture;

    monitor-enter v8

    .line 65
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lsun/net/www/http/HttpCapture;->initialized:Z

    .line 67
    new-instance v7, Lsun/net/www/http/HttpCapture$1;

    invoke-direct {v7}, Lsun/net/www/http/HttpCapture$1;-><init>()V

    .line 66
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 72
    .local v5, "rulesFile":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    monitor-exit v8

    .line 64
    return-void

    .line 75
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_4

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 83
    const-string/jumbo v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 85
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "s":[Ljava/lang/String;
    array-length v7, v6

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 87
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    .line 91
    :cond_2
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v6    # "s":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 76
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/FileNotFoundException;
    monitor-exit v8

    .line 77
    return-void

    .line 101
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 97
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 101
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 102
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 99
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 101
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 102
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    const-class v0, Lsun/net/www/http/HttpCapture;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-boolean v1, Lsun/net/www/http/HttpCapture;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 140
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized received(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    const-string/jumbo v1, "\n<------\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    .line 135
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    :cond_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 131
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sent(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    const-string/jumbo v1, "\n------>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    .line 126
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 128
    :cond_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 122
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

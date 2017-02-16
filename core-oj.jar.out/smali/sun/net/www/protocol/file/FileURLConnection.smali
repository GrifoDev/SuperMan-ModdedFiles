.class public Lsun/net/www/protocol/file/FileURLConnection;
.super Lsun/net/www/URLConnection;
.source "FileURLConnection.java"


# static fields
.field static CONTENT_LENGTH:Ljava/lang/String;

.field static CONTENT_TYPE:Ljava/lang/String;

.field static LAST_MODIFIED:Ljava/lang/String;

.field static TEXT_PLAIN:Ljava/lang/String;


# instance fields
.field contentType:Ljava/lang/String;

.field exists:Z

.field file:Ljava/io/File;

.field filename:Ljava/lang/String;

.field files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initializedHeaders:Z

.field is:Ljava/io/InputStream;

.field isDirectory:Z

.field lastModified:J

.field length:J

.field permission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "content-length"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "content-type"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "text/plain"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "last-modified"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/io/File;)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 60
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    .line 61
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    .line 106
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    .line 69
    iput-object p2, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    .line 67
    return-void
.end method

.method private initializeHeaders()V
    .locals 8

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    .line 111
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    if-eqz v4, :cond_0

    .line 108
    :goto_1
    return-void

    .line 115
    :cond_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    .line 116
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    .line 118
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-nez v4, :cond_3

    .line 119
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v3

    .line 120
    .local v3, "map":Ljava/net/FileNameMap;
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    iget-wide v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 132
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 134
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v2, "fo":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "fo":Ljava/text/SimpleDateFormat;
    .end local v3    # "map":Ljava/net/FileNameMap;
    :cond_2
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    goto :goto_1

    .line 139
    :cond_3
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    sget-object v6, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v4, :cond_2

    .line 81
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    .line 83
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "fileList":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 86
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exists, but is not accessible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "fileList":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileList":[Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .end local v1    # "fileList":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    .line 78
    :cond_2
    return-void

    .line 90
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 93
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v6, "GET"

    invoke-virtual {v4, v5, v6}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v2

    .line 94
    .local v2, "meteredInput":Z
    if-eqz v2, :cond_1

    .line 95
    new-instance v3, Lsun/net/ProgressSource;

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v5, "GET"

    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 96
    .local v3, "pi":Lsun/net/ProgressSource;
    new-instance v4, Lsun/net/www/MeteredStream;

    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v5, v3, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    .prologue
    .line 156
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 157
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 158
    const/4 v0, -0x1

    return v0

    .line 159
    :cond_0
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    long-to-int v0, v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 164
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 152
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 147
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 169
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    .line 190
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 191
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-eqz v4, :cond_3

    .line 192
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v3

    .line 194
    .local v3, "map":Ljava/net/FileNameMap;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    if-nez v4, :cond_0

    .line 197
    new-instance v4, Ljava/io/FileNotFoundException;

    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "map":Ljava/net/FileNameMap;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 200
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "map":Ljava/net/FileNameMap;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 203
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 213
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "map":Ljava/net/FileNameMap;
    :cond_2
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 210
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileNotFoundException;

    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 179
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    return-wide v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 222
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "decodedPath":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v1, v3, :cond_1

    .line 225
    new-instance v1, Ljava/io/FilePermission;

    const-string/jumbo v2, "read"

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    .line 231
    .end local v0    # "decodedPath":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    return-object v1

    .line 227
    .restart local v0    # "decodedPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/FilePermission;

    .line 228
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "read"

    .line 227
    invoke-direct {v1, v2, v3}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    goto :goto_0
.end method

.method public getProperties()Lsun/net/www/MessageHeader;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 174
    invoke-super {p0}, Lsun/net/www/URLConnection;->getProperties()Lsun/net/www/MessageHeader;

    move-result-object v0

    return-object v0
.end method

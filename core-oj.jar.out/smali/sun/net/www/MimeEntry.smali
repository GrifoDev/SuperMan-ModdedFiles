.class public Lsun/net/www/MimeEntry;
.super Ljava/lang/Object;
.source "MimeEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LAUNCH_APPLICATION:I = 0x3

.field public static final LOAD_INTO_BROWSER:I = 0x1

.field public static final SAVE_TO_FILE:I = 0x2

.field public static final UNKNOWN:I

.field static final actionKeywords:[Ljava/lang/String;


# instance fields
.field private action:I

.field private command:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fileExtensions:[Ljava/lang/String;

.field private imageFileName:Ljava/lang/String;

.field starred:Z

.field private tempFileNameTemplate:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "unknown"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "browser"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "save"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "application"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "tempFileNameTemplate"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    .line 85
    iput p2, p0, Lsun/net/www/MimeEntry;->action:I

    .line 86
    iput-object p3, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "fileExtensions"    # [Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    .line 98
    iput p2, p0, Lsun/net/www/MimeEntry;->action:I

    .line 99
    iput-object p3, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lsun/net/www/MimeEntry;->isStarred(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "imageFileName"    # Ljava/lang/String;
    .param p3, "extensionString"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MimeEntry;->action:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p3}, Lsun/net/www/MimeEntry;->setExtensions(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/net/www/MimeEntry;->isStarred(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    .line 72
    return-void
.end method

.method private isStarred(Ljava/lang/String;)Z
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 205
    const-string/jumbo v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 203
    :cond_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lsun/net/www/MimeEntry;

    iget-object v1, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "theClone":Lsun/net/www/MimeEntry;
    iget v1, p0, Lsun/net/www/MimeEntry;->action:I

    iput v1, v0, Lsun/net/www/MimeEntry;->action:I

    .line 274
    iget-object v1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    .line 280
    return-object v0
.end method

.method public declared-synchronized getAction()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lsun/net/www/MimeEntry;->action:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExtensionsAsList()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 176
    :try_start_0
    const-string/jumbo v0, ""

    .line 177
    .local v0, "extensionsAsString":Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    .line 186
    return-object v0

    .end local v0    # "extensionsAsString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLaunchString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTempFileTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getType()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launch(Ljava/net/URLConnection;Ljava/io/InputStream;Lsun/net/www/MimeTable;)Ljava/lang/Object;
    .locals 8
    .param p1, "urlc"    # Ljava/net/URLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "mt"    # Lsun/net/www/MimeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/www/ApplicationLaunchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    iget v0, p0, Lsun/net/www/MimeEntry;->action:I

    packed-switch v0, :pswitch_data_0

    .line 258
    return-object v1

    .line 224
    :pswitch_0
    return-object p2

    .line 236
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 237
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Ljava/lang/Exception;
    return-object v1

    .line 243
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v5, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 244
    .local v5, "threadName":Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 245
    .local v7, "fst":I
    if-lez v7, :cond_0

    .line 246
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 249
    :cond_0
    new-instance v0, Lsun/net/www/MimeLauncher;

    .line 250
    invoke-virtual {p3}, Lsun/net/www/MimeTable;->getTempFileTemplate()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 249
    invoke-direct/range {v0 .. v5}, Lsun/net/www/MimeLauncher;-><init>(Lsun/net/www/MimeEntry;Ljava/net/URLConnection;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 255
    .end local v5    # "threadName":Ljava/lang/String;
    .end local v7    # "fst":I
    :pswitch_3
    return-object v1

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    iput p1, p0, Lsun/net/www/MimeEntry;->action:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 124
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAction(ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    iput p1, p0, Lsun/net/www/MimeEntry;->action:I

    .line 121
    iput-object p2, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 133
    :try_start_0
    iput-object p1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 132
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iput-object p1, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;
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

.method public declared-synchronized setExtensions(Ljava/lang/String;)V
    .locals 6
    .param p1, "extensionString"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v1, "extTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 192
    .local v4, "numExts":I
    new-array v2, v4, [Ljava/lang/String;

    .line 194
    .local v2, "extensionStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "ext":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 189
    return-void

    .end local v1    # "extTokens":Ljava/util/StringTokenizer;
    .end local v2    # "extensionStrings":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "numExts":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setImageFileName(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "java.net.ftp.imagepath."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 162
    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 152
    return-void

    .line 159
    :cond_1
    :try_start_1
    iput-object p1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 111
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toProperty()Ljava/lang/String;
    .locals 9

    .prologue
    monitor-enter p0

    .line 284
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "; "

    .line 287
    .local v6, "separator":Ljava/lang/String;
    const/4 v5, 0x0

    .line 289
    .local v5, "needSeparator":Z
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getAction()I

    move-result v0

    .line 290
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const/4 v5, 0x1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getLaunchString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "command":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 297
    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "application="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const/4 v5, 0x1

    .line 304
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getImageFileName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 305
    if-eqz v5, :cond_3

    .line 306
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "icon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getImageFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const/4 v5, 0x1

    .line 312
    :cond_4
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getExtensionsAsList()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "extensions":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 314
    if-eqz v5, :cond_5

    .line 315
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file_extensions="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const/4 v5, 0x1

    .line 321
    :cond_6
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 329
    :cond_7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    monitor-exit p0

    return-object v7

    .line 323
    :cond_8
    if-eqz v5, :cond_9

    .line 324
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "description="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "action":I
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "extensions":Ljava/lang/String;
    .end local v5    # "needSeparator":Z
    .end local v6    # "separator":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MimeEntry[contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    const-string/jumbo v1, ", image="

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, ", action="

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    iget v1, p0, Lsun/net/www/MimeEntry;->action:I

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string/jumbo v1, ", command="

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    const-string/jumbo v1, ", extensions="

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getExtensionsAsList()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    const-string/jumbo v1, "]"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

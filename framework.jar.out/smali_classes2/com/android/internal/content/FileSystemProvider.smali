.class public abstract Lcom/android/internal/content/FileSystemProvider;
.super Landroid/provider/DocumentsProvider;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;,
        Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final LOG_INOTIFY:Z = false

.field private static final TAG:Ljava/lang/String; = "FileSystemProvider"


# instance fields
.field private mDefaultProjection:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mObservers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mObservers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider;->startObserving(Ljava/io/File;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->stopObserving(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/content/FileSystemProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/content/FileSystemProvider;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    return-void
.end method

.method private addFolderToMediaStore(Ljava/io/File;)V
    .locals 5

    if-eqz p1, :cond_1

    sget-boolean v3, Lcom/android/internal/content/FileSystemProvider;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getDirectoryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method private static getTypeForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vnd.android.document/directory"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v3, "application/octet-stream"

    return-object v3
.end method

.method private moveInMediaStore(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getDirectoryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "_data LIKE ? AND lower(_data)=lower(?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private removeFromMediaStore(Ljava/io/File;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "_data LIKE ?1 AND lower(_data)=lower(?2)"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private resolveProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private scanFile(Ljava/io/File;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startObserving(Ljava/io/File;Landroid/net/Uri;)V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->startWatching()V

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-get0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-set0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private stopObserving(Ljava/io/File;)V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-get0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-set0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;I)I

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-get0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->stopWatching()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected abstract buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Parent document isn\'t a directory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {v3, p2, p3}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "vnd.android.document/directory"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to mkdir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/content/FileSystemProvider;->addFolderToMediaStore(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to touch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to touch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/internal/content/FileSystemProvider;->removeFromMediaStore(Ljava/io/File;Z)V

    return-void
.end method

.method protected final findDocumentPath(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not found under "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected abstract getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider;->getTypeForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p2, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v1, 0x8

    or-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x100

    :cond_0
    :goto_1
    invoke-static {p3}, Lcom/android/internal/content/FileSystemProvider;->getTypeForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "image/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    const-string/jumbo v6, "document_id"

    invoke-virtual {v5, v6, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v6, "_display_name"

    invoke-virtual {v5, v6, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v6, "_size"

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v6, "mime_type"

    invoke-virtual {v5, v6, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v6, "flags"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide v6, 0x757b12c00L

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    const-string/jumbo v6, "last_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_2
    return-object v5

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    or-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x100

    goto :goto_1
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to determine if "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic lambda$-com_android_internal_content_FileSystemProvider_15148(Ljava/io/File;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->scanFile(Ljava/io/File;)V

    return-void
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Already exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to move to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/content/FileSystemProvider;->moveInMediaStore(Ljava/io/File;Ljava/io/File;)V

    return-object v2
.end method

.method protected onCreate([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    return-void
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Subclass should override this and call onCreate(defaultDocumentProjection)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    if-eq v10, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "content://com.samsung.android.dlp.service/isAccessible?filepath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_0

    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "NON-Whitelisted App tried to open DLP file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v10, "DLP_FileSystemProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "emulated storage is not backed by internal storage nor an adopted storage device:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v9

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v5

    const/high16 v10, 0x10000000

    if-eq v5, v10, :cond_1

    if-nez v9, :cond_3

    :cond_1
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    return-object v10

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;

    invoke-direct {v11, p0, v9}, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5, v10, v11}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    return-object v10

    :catch_1
    move-exception v0

    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to open for writing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/DocumentsContract;->openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;-><init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v0}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0
.end method

.method protected final querySearchDocuments(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    const/16 v5, 0x18

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/content/FileSystemProvider;->moveInMediaStore(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

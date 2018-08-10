.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$PathStrategy;,
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static sCache:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "_size"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    array-length v4, p1

    move-object v1, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p1, v3

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 6

    sget-object v4, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    sget-object v3, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v3, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x10000000

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v0, 0x2c000000

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v0, 0x2a000000

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v0, 0x38000000

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v0, 0x3c000000    # 0.0078125f

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v6, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    invoke-direct {v6, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v3, v10, v11}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "path"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string/jumbo v10, "root-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v8, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    :cond_1
    :goto_1
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v8, v10}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6, v4, v10}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "files-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "cache-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    goto :goto_1

    :cond_4
    const-string/jumbo v10, "external-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "external-files-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    invoke-static {p0, v10}, Landroid/support/v4/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v10, v1

    if-lez v10, :cond_1

    const/4 v10, 0x0

    aget-object v8, v1, v10

    goto :goto_1

    :cond_6
    const-string/jumbo v10, "external-cache-path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p0}, Landroid/support/v4/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    array-length v10, v0

    if-lez v10, :cond_1

    const/4 v10, 0x0

    aget-object v8, v0, v10

    goto :goto_1

    :cond_7
    return-object v6
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v4, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo v4, "application/octet-stream"

    return-object v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    iget-object v7, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v7, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    if-nez p2, :cond_0

    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    :cond_0
    array-length v7, p2

    new-array v1, v7, [Ljava/lang/String;

    array-length v7, p2

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x0

    array-length v8, p2

    move v5, v4

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    const-string/jumbo v9, "_display_name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "_display_name"

    aput-object v9, v1, v5

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "_size"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "_size"

    aput-object v9, v1, v5

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_1

    :cond_2
    invoke-static {v1, v5}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v5}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

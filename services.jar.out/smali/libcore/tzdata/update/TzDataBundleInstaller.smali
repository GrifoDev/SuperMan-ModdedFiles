.class public final Llibcore/tzdata/update/TzDataBundleInstaller;
.super Ljava/lang/Object;
.source "TzDataBundleInstaller.java"


# static fields
.field static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final installDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    iput-object p2, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    return-void
.end method

.method private checkBundleFilesExist(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Verifying bundle contents"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "tzdata_version"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "checksums"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "tzdata"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "icu/icu_tzdata.dat"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Llibcore/tzdata/update/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unpackBundle([BLjava/io/File;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpacking update content to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Llibcore/tzdata/update/ConfigBundle;

    invoke-direct {v0, p1}, Llibcore/tzdata/update/ConfigBundle;-><init>([B)V

    invoke-virtual {v0, p2}, Llibcore/tzdata/update/ConfigBundle;->extractTo(Ljava/io/File;)V

    return-object p2
.end method

.method private verifySystemChecksums(Ljava/io/File;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v12, "Verifying system file checksums"

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string/jumbo v11, "checksums"

    invoke-direct {v2, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x2c

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v3, v11, :cond_2

    :cond_1
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad checksum entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": file not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :catch_0
    move-exception v4

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid checksum value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    invoke-static {v5}, Llibcore/tzdata/update/FileUtils;->calculateChecksum(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v11, v0, v6

    if-eqz v11, :cond_0

    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": required="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", actual="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_4
    const/4 v11, 0x1

    return v11
.end method


# virtual methods
.method public install([B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string/jumbo v5, "old"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string/jumbo v5, "current"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string/jumbo v5, "working"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v5, "Applying time zone update"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Llibcore/tzdata/update/TzDataBundleInstaller;->unpackBundle([BLjava/io/File;)Ljava/io/File;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->checkBundleFilesExist(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v5, "Update not applied: Bundle is missing files"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v4

    :cond_1
    :try_start_1
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update applied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " successfully created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v4

    :catchall_0
    move-exception v4

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v4
.end method

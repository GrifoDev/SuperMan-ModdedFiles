.class public Llibcore/tzdata/update2/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final systemTzDataFile:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    iput-object p2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "tzdata"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "icu/icu_tzdata.dat"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Llibcore/tzdata/shared2/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanSystem(Ljava/io/File;Llibcore/tzdata/shared2/DistroVersion;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v4, "Reading /system rules version"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p2, Llibcore/tzdata/shared2/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", systemRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", systemRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v3, "Reading distro format version"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "distro_version"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Llibcore/tzdata/shared2/DistroException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No distro version file found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/tzdata/shared2/DistroException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget v2, Llibcore/tzdata/shared2/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    invoke-static {v0, v2}, Llibcore/tzdata/shared2/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    invoke-static {v1}, Llibcore/tzdata/shared2/DistroVersion;->fromBytes([B)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v2

    return-object v2
.end method

.method private readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "tzdata file cannot be found in /system"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system tzdata does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Llibcore/util/ZoneInfoDB$TzData;->getRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unpackDistro([BLjava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpacking update content to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Llibcore/tzdata/shared2/TimeZoneDistro;

    invoke-direct {v0, p1}, Llibcore/tzdata/shared2/TimeZoneDistro;-><init>([B)V

    invoke-virtual {v0, p2}, Llibcore/tzdata/shared2/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Llibcore/tzdata/shared2/DistroVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Llibcore/tzdata/shared2/StagedDistroOperation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Llibcore/tzdata/shared2/StagedDistroOperation;->uninstall()Llibcore/tzdata/shared2/StagedDistroOperation;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Llibcore/tzdata/shared2/StagedDistroOperation;->install(Llibcore/tzdata/shared2/DistroVersion;)Llibcore/tzdata/shared2/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getSystemRulesVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public install([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stageInstallWithErrorCode([B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public stageInstallWithErrorCode([B)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_1
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Unpacking / verifying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->unpackDistro([BLjava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;
    :try_end_1
    .catch Llibcore/tzdata/shared2/DistroException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_2
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro version could not be loaded"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid distro version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Llibcore/tzdata/shared2/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :cond_2
    :try_start_4
    invoke-static {v0}, Llibcore/tzdata/shared2/DistroVersion;->isCompatibleWithThisDevice(Llibcore/tzdata/shared2/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: Distro format version check failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v7, 0x2

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :cond_3
    :try_start_5
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :cond_4
    :try_start_6
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v7, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->checkDistroRulesNewerThanSystem(Ljava/io/File;Llibcore/tzdata/shared2/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro rules version check failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v7, 0x3

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :cond_5
    :try_start_7
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzdata"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/ZoneInfoDB$TzData;->loadTzData(Ljava/lang/String;)Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " could not be loaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :cond_6
    :try_start_8
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->validate()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzlookup.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :catch_1
    move-exception v1

    :try_start_a
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :catchall_0
    move-exception v7

    :try_start_c
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v7

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v7

    :cond_7
    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/TimeZoneFinder;->createInstance(Ljava/lang/String;)Llibcore/util/TimeZoneFinder;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/util/TimeZoneFinder;->validate()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Applying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Nothing to unstage at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Install staged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " successfully created"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v7, 0x0

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :catch_2
    move-exception v1

    :try_start_f
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :cond_8
    :try_start_10
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0
.end method

.method public stageUninstall()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to unstage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->createEmptyFile(Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v3
.end method

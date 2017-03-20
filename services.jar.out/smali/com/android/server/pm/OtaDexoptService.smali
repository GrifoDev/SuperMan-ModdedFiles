.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final DEBUG_DEXOPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDexoptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {p0, v0}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .locals 2

    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v1, "otadexopt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Should not be ota-dexopting when trying to move."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    if-nez v12, :cond_2

    const-string/jumbo v12, "OTADexopt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " can be optimized but has null codePath"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string/jumbo v13, "/system"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string/jumbo v13, "/vendor"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v12}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v8

    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    array-length v13, v2

    :goto_1
    if-ge v12, v13, :cond_1

    aget-object v1, v2, v12

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    iget-object v15, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1, v5}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "OTADexopt"

    const-string/jumbo v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    const-string/jumbo v0, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for OTA dexopt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Invalid low memory threshold"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-gez v0, :cond_3

    const-string/jumbo v0, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not running dexopt on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " due to low memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isDone()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public declared-synchronized prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

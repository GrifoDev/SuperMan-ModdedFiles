.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$SessionParams;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PERMISSIONS"

.field public static final ACTION_SESSION_COMMITTED:Ljava/lang/String; = "android.content.pm.action.SESSION_COMMITTED"

.field public static final ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final ENABLE_REVOCABLE_FD:Z

.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"

.field public static final EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"

.field public static final EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SESSION:Ljava/lang/String; = "android.content.pm.extra.SESSION"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_FAILURE_ABORTED:I = 0x3

.field public static final STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final STATUS_FAILURE_INVALID:I = 0x4

.field public static final STATUS_FAILURE_STORAGE:I = 0x6

.field public static final STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "fw.revocable_fd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iput p3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public getAllSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMySessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 5

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V
    .locals 7

    const-string/jumbo v0, "versionedPackage cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 2

    new-instance v0, Landroid/content/pm/VersionedPackage;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V

    return-void
.end method

.method public unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5

    iget-object v4, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit v4

    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

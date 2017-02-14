.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SELinux.java"


# static fields
.field private static final SELINUX_ANDROID_RESTORECON_DATADATA:I = 0x10

.field private static final SELINUX_ANDROID_RESTORECON_FORCE:I = 0x8

.field private static final SELINUX_ANDROID_RESTORECON_NOCHANGE:I = 0x1

.field private static final SELINUX_ANDROID_RESTORECON_RECURSE:I = 0x4

.field private static final SELINUX_ANDROID_RESTORECON_VERBOSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SELinux"

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SELinux;->lock:Ljava/lang/Object;

    const-string/jumbo v0, "android_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native compareHashValue(I)Z
.end method

.method public static native computeSEPolicyIndex()I
.end method

.method public static final native getContext()Ljava/lang/String;
.end method

.method public static getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native getPidContext(I)Ljava/lang/String;
.end method

.method public static final native getSEAndroidVersion()Ljava/lang/String;
.end method

.method public static final native getSEPolicyBuildDate()Ljava/lang/String;
.end method

.method public static final native getSEPolicyVersion()Ljava/lang/String;
.end method

.method private static final native getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method public static final native isSELinuxEnabled()Z
.end method

.method public static final native isSELinuxEnforced()Z
.end method

.method private static native native_recursive_restorecon_with_category(Ljava/lang/String;I)Z
.end method

.method public static native native_reloadSeappContexts()Z
.end method

.method private static native native_restorecon(Ljava/lang/String;I)Z
.end method

.method public static reloadSeappContexts()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Landroid/os/SELinux;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->native_reloadSeappContexts()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static restorecon(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SELinux"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public static restorecon(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static restoreconRecursive(Ljava/io/File;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SELinux"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static restorecon_with_category(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/os/SELinux;->native_recursive_restorecon_with_category(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final native setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native verifySignature()Z
.end method

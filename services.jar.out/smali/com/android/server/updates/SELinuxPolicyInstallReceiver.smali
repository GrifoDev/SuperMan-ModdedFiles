.class public Lcom/android/server/updates/SELinuxPolicyInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SELinuxPolicyInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinuxPolicyInstallReceiver"

.field private static final fileContextsPath:Ljava/lang/String; = "file_contexts.bin"

.field private static final macPermissionsPath:Ljava/lang/String; = "mac_permissions.xml"

.field private static final propertyContextsPath:Ljava/lang/String; = "property_contexts"

.field private static final seappContextsPath:Ljava/lang/String; = "seapp_contexts"

.field private static final sepolicyPath:Ljava/lang/String; = "sepolicy"

.field private static final serviceContextsPath:Ljava/lang/String; = "service_contexts"

.field private static final versionPath:Ljava/lang/String; = "selinux_version"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "/data/security/bundle"

    const-string/jumbo v1, "sepolicy_bundle"

    const-string/jumbo v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyUpdate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v5, "Applying SELinux policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "backup"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "current"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "tmp"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "selinux.reload_policy"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v5, "Could not update selinux policy: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-array v0, p3, [B

    invoke-virtual {p2, v0, v2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    return-void
.end method

.method private readChunkLengths(Ljava/io/BufferedInputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x7

    new-array v0, v1, [I

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    return-object v0
.end method

.method private readInt(Ljava/io/BufferedInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    or-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private unpackBundle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateContent:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readChunkLengths(Ljava/io/BufferedInputStream;)[I

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "selinux_version"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "mac_permissions.xml"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "seapp_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "property_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "file_contexts.bin"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sepolicy"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "service_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->unpackBundle()V

    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->applyUpdate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "Could not update selinux policy: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "Could not update selinux policy: "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "SELinux policy update malformed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

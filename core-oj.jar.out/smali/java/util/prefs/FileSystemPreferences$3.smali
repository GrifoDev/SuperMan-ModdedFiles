.class final Ljava/util/prefs/FileSystemPreferences$3;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    const-string/jumbo v3, "java.util.prefs.systemRoot"

    const-string/jumbo v4, "/etc/.java"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, ".systemPrefs"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "java.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".systemPrefs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Created system preferences directory in java.home."

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ed

    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set1(Z)Z

    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, ".system.lock"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, ".systemRootModFile"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set5(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get2()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Chmod failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Unix error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/prefs/FileSystemPreferences;->-set6(J)J

    const/4 v3, 0x0

    return-object v3

    :cond_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Could not create system preferences directory. System preferences are unusable."

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

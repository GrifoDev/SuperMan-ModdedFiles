.class final Ljava/util/prefs/FileSystemPreferences$2;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V
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

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    .prologue
    .line 100
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "java.util.prefs.userRoot"

    .line 101
    const-string/jumbo v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string/jumbo v5, ".java/.userPrefs"

    .line 100
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set7(Ljava/io/File;)Ljava/io/File;

    .line 103
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    :try_start_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c0

    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Created user preferences directory."

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set3(Z)Z

    .line 118
    const-string/jumbo v3, "user.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "USER_NAME":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ".user.lock."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ".userRootModFile."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set8(Ljava/io/File;)Ljava/io/File;

    .line 122
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :try_start_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 127
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 128
    const/16 v4, 0x180

    .line 127
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 130
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Problem creating userRoot mod file. Chmod failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    const-string/jumbo v5, " Unix error code "

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v2    # "result":I
    :cond_1
    :goto_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/prefs/FileSystemPreferences;->-set9(J)J

    .line 138
    const/4 v3, 0x0

    return-object v3

    .line 107
    .end local v0    # "USER_NAME":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Could not change permissions on userRoot directory. "

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Couldn\'t create user preferences directory. User preferences are unusable."

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    .restart local v0    # "USER_NAME":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_2
.end method

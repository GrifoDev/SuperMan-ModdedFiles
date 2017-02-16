.class public Lsun/misc/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final java_runtime_name:Ljava/lang/String; = "Android Runtime"

.field private static final java_runtime_version:Ljava/lang/String; = "0.9"

.field private static final java_version:Ljava/lang/String; = "0"

.field private static jdk_build_number:I = 0x0

.field private static jdk_major_version:I = 0x0

.field private static jdk_micro_version:I = 0x0

.field private static jdk_minor_version:I = 0x0

.field private static jdk_special_version:Ljava/lang/String; = null

.field private static jdk_update_version:I = 0x0

.field private static jvmVersionInfoAvailable:Z = false

.field private static jvm_build_number:I = 0x0

.field private static jvm_major_version:I = 0x0

.field private static jvm_micro_version:I = 0x0

.field private static jvm_minor_version:I = 0x0

.field private static jvm_special_version:Ljava/lang/String; = null

.field private static jvm_update_version:I = 0x0

.field private static final launcher_name:Ljava/lang/String; = ""

.field private static versionsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    .line 46
    sput v0, Lsun/misc/Version;->jvm_major_version:I

    .line 47
    sput v0, Lsun/misc/Version;->jvm_minor_version:I

    .line 48
    sput v0, Lsun/misc/Version;->jvm_micro_version:I

    .line 49
    sput v0, Lsun/misc/Version;->jvm_update_version:I

    .line 50
    sput v0, Lsun/misc/Version;->jvm_build_number:I

    .line 51
    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 52
    sput v0, Lsun/misc/Version;->jdk_major_version:I

    .line 53
    sput v0, Lsun/misc/Version;->jdk_minor_version:I

    .line 54
    sput v0, Lsun/misc/Version;->jdk_micro_version:I

    .line 55
    sput v0, Lsun/misc/Version;->jdk_update_version:I

    .line 56
    sput v0, Lsun/misc/Version;->jdk_build_number:I

    .line 57
    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getJdkSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJdkVersionInfo()V
.end method

.method public static native getJvmSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJvmVersionInfo()Z
.end method

.method public static initSystemProperties()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "java.version"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "java.runtime.version"

    const-string/jumbo v1, "0.9"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "java.runtime.name"

    const-string/jumbo v1, "Android Runtime"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static declared-synchronized initVersions()V
    .locals 13

    .prologue
    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v7, 0x0

    const-class v8, Lsun/misc/Version;

    monitor-enter v8

    .line 259
    :try_start_0
    sget-boolean v9, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    monitor-exit v8

    .line 260
    return-void

    .line 262
    :cond_0
    :try_start_1
    invoke-static {}, Lsun/misc/Version;->getJvmVersionInfo()Z

    move-result v9

    sput-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    .line 263
    sget-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    if-nez v9, :cond_3

    .line 268
    const-string/jumbo v9, "java.vm.version"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_3

    .line 270
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 269
    if-eqz v9, :cond_3

    .line 270
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_3

    .line 271
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 269
    if-eqz v9, :cond_3

    .line 271
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_3

    .line 272
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 269
    if-eqz v9, :cond_3

    .line 273
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_major_version:I

    .line 274
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_minor_version:I

    .line 275
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_micro_version:I

    .line 276
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x5

    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    .line 278
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 277
    if-eqz v9, :cond_2

    .line 279
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 277
    if-eqz v9, :cond_2

    .line 280
    const/4 v3, 0x3

    .line 282
    .local v3, "nextChar":I
    const/4 v9, 0x1

    const/4 v10, 0x3

    :try_start_2
    invoke-interface {v1, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "uu":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lsun/misc/Version;->jvm_update_version:I

    .line 284
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v11, :cond_1

    .line 285
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 286
    .local v0, "c":C
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_1

    .line 287
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    const/4 v3, 0x4

    .line 295
    .end local v0    # "c":C
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v3, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 297
    .end local v3    # "nextChar":I
    .end local v6    # "uu":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    .line 301
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "res":[Ljava/lang/String;
    array-length v9, v4

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v5, v4, v7

    .line 304
    .local v5, "s":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x62

    if-ne v10, v11, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_4

    .line 305
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    .line 304
    if-eqz v10, :cond_4

    .line 306
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    .line 304
    if-eqz v10, :cond_4

    .line 308
    const/4 v7, 0x1

    const/4 v9, 0x3

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 307
    sput v7, Lsun/misc/Version;->jvm_build_number:I

    .line 315
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lsun/misc/Version;->getJdkVersionInfo()V

    .line 316
    const/4 v7, 0x1

    sput-boolean v7, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    .line 258
    return-void

    .line 291
    .restart local v3    # "nextChar":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    monitor-exit v8

    .line 293
    return-void

    .line 303
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "nextChar":I
    .restart local v4    # "res":[Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized jdkBuildNumber()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 253
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_build_number:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMajorVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 196
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_major_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMicroVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 218
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_micro_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkMinorVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 207
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_minor_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkSpecialVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 237
    :cond_0
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Lsun/misc/Version;->getJdkSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 240
    :cond_1
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jdkUpdateVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 227
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 230
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_update_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmBuildNumber()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 184
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_build_number:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMajorVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 122
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_major_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMicroVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 149
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_micro_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmMinorVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 135
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_minor_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmSpecialVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 168
    :cond_0
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 169
    invoke-static {}, Lsun/misc/Version;->getJvmSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 171
    :cond_1
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jvmUpdateVersion()I
    .locals 2

    .prologue
    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 161
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_update_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static print()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 64
    return-void
.end method

.method public static print(Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 84
    .local v1, "isHeadless":Z
    const-string/jumbo v5, "java.awt.headless"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "headless":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 90
    :cond_0
    const-string/jumbo v5, " version \"0\""

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v5, "Android Runtime (build 0.9"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v5, "Android Runtime"

    const-string/jumbo v6, "Embedded"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 98
    const-string/jumbo v5, ", headless"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 100
    :cond_1
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(C)V

    .line 103
    const-string/jumbo v5, "java.vm.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "java_vm_name":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "java_vm_version":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.info"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "java_vm_info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (build "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    const-string/jumbo v6, ")"

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static println()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 72
    return-void
.end method

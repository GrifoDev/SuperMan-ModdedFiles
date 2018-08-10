.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final DEBUG_NATIVE:Z = false

.field private static final HAS_NATIVE_BRIDGE:Z

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "ro.dalvik.vm.native.bridge"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    const/4 v2, 0x0

    array-length v10, v9

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_1

    aget-wide v0, v9, v8

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    sget-boolean v5, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    iget-boolean v6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v7

    if-eq v7, v11, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_1
    return v11
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    aget-object v5, p2, v0

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    move-object v4, v3

    :goto_0
    aget-object v5, p2, v0

    invoke-static {p0, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    return v1

    :cond_0
    move-object v4, p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 9

    const/16 v8, -0x71

    const/16 v7, -0x72

    const/4 v6, 0x1

    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v4, :cond_2

    if-eqz p2, :cond_0

    const-string/jumbo v4, "-"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NativeHelper"

    const-string/jumbo v5, "Ignoring abiOverride for multi arch application."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, -0x72

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, p1, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v8, :cond_1

    const-string/jumbo v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7

    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, p1, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v8, :cond_7

    const-string/jumbo v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v2, 0x0

    const-string/jumbo v4, "-"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    :goto_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :cond_4
    const/4 v4, 0x1

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_7

    if-eq v1, v7, :cond_7

    const-string/jumbo v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure copying native libraries [errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    if-eqz p2, :cond_3

    move-object v2, p2

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    return v6

    :catch_0
    move-exception v3

    const-string/jumbo v4, "NativeHelper"

    const-string/jumbo v5, "Copying native libraries failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, -0x6e

    return v4
.end method

.method private static createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    sget v3, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot set SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x0

    const/16 v2, -0x72

    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-wide v0, v5, v4

    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v0, v1, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;Z)I

    move-result v3

    const/16 v7, -0x72

    if-ne v3, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v7, -0x71

    if-ne v3, v7, :cond_2

    if-gez v2, :cond_0

    const/16 v2, -0x71

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_4

    if-ltz v2, :cond_3

    if-ge v3, v2, :cond_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-wide v0, v5, v3

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error scanning APK, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-ne v2, v7, :cond_1

    return v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;Z)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;Z)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete native binary directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    return-void
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 10

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v0, v5, v4

    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v0, v1, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;Z)J

    move-result-wide v8

    add-long/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 4

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v4, :cond_3

    if-eqz p1, :cond_0

    const-string/jumbo v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NativeHelper"

    const-string/jumbo v5, "Ignoring abiOverride for multi arch application."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long v2, v6, v4

    :cond_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_2
    :goto_0
    return-wide v2

    :cond_3
    const/4 v1, 0x0

    const-string/jumbo v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    :goto_2
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_5

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :cond_5
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long v2, v6, v4

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_4

    move-object v1, p1

    goto :goto_1

    :cond_7
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_2
.end method

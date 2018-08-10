.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;,
        Landroid/webkit/WebViewFactory$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForO"

.field private static final CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    :goto_0
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    invoke-direct {v6, v4}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40d

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    if-gtz v7, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.webview.WebViewDonorPackage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const v4, 0x10202400

    :try_start_0
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    :cond_1
    return-void

    :catch_0
    move-exception v3

    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find donor package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v8, p1

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v0, p1, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    if-nez v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "!/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_2
    new-instance v6, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v6, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :catch_1
    move-exception v7

    goto :goto_1

    :cond_1
    return-object v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_3
    if-eqz v7, :cond_8

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v6

    :goto_4
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_5
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_6
    if-eqz v7, :cond_7

    :try_start_8
    throw v7

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    const-string/jumbo v6, ""

    return-object v6

    :catchall_1
    move-exception v6

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v6

    move-object v4, v5

    goto :goto_4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 10

    sget-object v6, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v7, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v5, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_1

    const/16 v5, 0x403

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_1

    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const-string/jumbo v5, "WebViewFactory.getProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    const/4 v3, 0x0

    :try_start_4
    const-string/jumbo v5, "create"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/webkit/WebViewDelegate;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    :goto_0
    :try_start_5
    const-string/jumbo v5, "WebViewFactoryProvider invocation"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v5, 0x1

    :try_start_6
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/webkit/WebViewDelegate;

    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebViewFactoryProvider;

    sput-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v8, 0x10

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v8, 0x10

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v6

    return-object v5

    :catch_0
    move-exception v0

    :try_start_9
    const-string/jumbo v5, "WebViewFactory"

    const-string/jumbo v7, "error instantiating provider"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    const-wide/16 v8, 0x10

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v5

    const-wide/16 v8, 0x10

    :try_start_b
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    :try_start_0
    const-string/jumbo v6, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    const-wide/16 v6, 0x10

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WebViewFactory.getChromiumProviderClass()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v6, "WebViewFactory.loadNativeLibrary()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6}, Landroid/webkit/WebViewFactory;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "Class.forName()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v8, 0x10

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_0
    move-exception v6

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_6
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    :try_start_7
    const-string/jumbo v6, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v6

    return-object v6

    :catchall_1
    move-exception v6

    const-wide/16 v8, 0x10

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v2

    :try_start_9
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error loading provider"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v6

    const-wide/16 v8, 0x10

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_a .. :try_end_a} :catch_0

    :catch_2
    move-exception v3

    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "Chromium WebView package does not exist"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .locals 11

    const/4 v10, 0x3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v7, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    const-wide/16 v8, 0x10

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v7, :cond_0

    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eq v7, v10, :cond_0

    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-static {v9}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_0
    move-exception v7

    const-wide/16 v8, 0x10

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :cond_0
    const-string/jumbo v7, "ActivityManager.addPackageDependency()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v7, "PackageManager.getPackageInfo()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v7, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const v8, 0x100024c0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v3

    const-wide/16 v8, 0x10

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v7, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v3}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v4}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    const-string/jumbo v7, "initialApplication.createApplicationContext"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v7, 0x3

    :try_start_8
    invoke-virtual {v2, v0, v7}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-wide/16 v8, 0x10

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_1
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :catchall_2
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :catchall_3
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private static getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .locals 8

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    return-object v6

    :cond_2
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string/jumbo v3, ""

    goto :goto_0

    :cond_4
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Time out waiting for Relro files being created"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "No WebView installed"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "Crashed for unknown reason"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForO"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I
    .locals 6

    const/4 v3, 0x0

    sget-boolean v2, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "WebViewFactory"

    const-string/jumbo v3, "can\'t load with relro file; address space not reserved"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    return v2

    :cond_0
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v3

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const-string/jumbo v4, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string/jumbo v5, "/data/misc/shared_relro/libwebviewchromium64.relro"

    invoke-static {v2, v3, v4, v5, p0}, Landroid/webkit/WebViewFactory;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "WebViewFactory"

    const-string/jumbo v3, "failed to load with relro file, proceeding without"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    return v6

    :catch_0
    move-exception v1

    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error waiting for relro creation"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v6, 0x8

    return v6

    :cond_0
    iget-object v6, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v9

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v6, 0x10000080

    :try_start_1
    invoke-virtual {v4, p0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    invoke-static {p1, v3}, Landroid/webkit/WebViewFactory;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    move-result v2

    if-nez v2, :cond_2

    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    return v6

    :catch_1
    move-exception v0

    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    return v2
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    invoke-static/range {p0 .. p0}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    array-length v0, v5

    move/from16 v18, v0

    move/from16 v17, v14

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    aget-object v9, v5, v17

    if-eqz v9, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const-string/jumbo v14, "!/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "!/"

    invoke-static {v9, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const/4 v15, 0x0

    const/4 v12, 0x0

    :try_start_1
    new-instance v13, Ljava/util/zip/ZipFile;

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, 0x1

    :try_start_2
    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_2
    if-eqz v15, :cond_0

    :try_start_4
    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v2

    move-object v12, v13

    :goto_3
    :try_start_5
    const-string/jumbo v14, "WebViewFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error reading APK file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const-string/jumbo v14, "WebViewFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error sizing load for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v11

    const-string/jumbo v14, "WebViewFactory"

    const-string/jumbo v15, "error preparing webview native library"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)I

    move-result v14

    return v14

    :catch_2
    move-exception v15

    goto :goto_2

    :cond_6
    if-eqz v13, :cond_7

    :try_start_6
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_5
    if-eqz v15, :cond_4

    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_3
    move-exception v15

    goto :goto_5

    :catch_4
    move-exception v14

    :goto_6
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v22, v15

    move-object v15, v14

    move-object/from16 v14, v22

    :goto_7
    if-eqz v12, :cond_8

    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_8
    if-eqz v15, :cond_a

    :try_start_a
    throw v15

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v16

    if-nez v15, :cond_9

    move-object/from16 v15, v16

    goto :goto_8

    :cond_9
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    throw v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :cond_b
    const-wide/16 v14, 0x2

    mul-long/2addr v14, v6

    const-wide/32 v16, 0x6400000

    :try_start_b
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-string/jumbo v14, "WebViewFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Setting new address space to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "persist.sys.webview.vmsize"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v14

    goto :goto_7

    :catchall_2
    move-exception v14

    move-object v12, v13

    goto :goto_7

    :catch_7
    move-exception v14

    move-object v12, v13

    goto :goto_6
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-static {v2, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static prepareWebViewInZygote()V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "webviewchromium_loader"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.webview.vmsize"

    const-wide/32 v4, 0x6400000

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->nativeReserveAddressSpace(J)Z

    move-result v3

    sput-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reserving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes of address space failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error preparing native loader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    if-nez p1, :cond_2

    return v3

    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p0, v4

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string/jumbo v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

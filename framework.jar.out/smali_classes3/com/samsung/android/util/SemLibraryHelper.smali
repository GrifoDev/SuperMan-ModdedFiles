.class public Lcom/samsung/android/util/SemLibraryHelper;
.super Ljava/lang/Object;
.source "SemLibraryHelper.java"


# static fields
.field private static isInitialized:Z

.field private static jarFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jarLibraryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soLibraryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soLibraryVersionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/util/SemLibraryHelper;->isSupportedLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, p1, v0

    aput-object v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static checkLibrary(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/system/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "/system/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string/jumbo v1, "/system/vendor/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const-string/jumbo v1, "/system/vendor/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static fileFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v7

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    return v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v6

    :cond_3
    return v6
.end method

.method private static getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/4 v14, 0x0

    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    :try_start_0
    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    move-object v8, v2

    check-cast v8, Lcom/samsung/android/util/LibraryVersionQuery;

    invoke-interface {v8}, Lcom/samsung/android/util/LibraryVersionQuery;->getLibraryVersion()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v1

    return-object v14

    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "opt"

    const-string/jumbo v12, "dex"

    invoke-static {v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/samsung/android/util/SemLibraryHelper;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v7, v10, v11, v13, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    return-object v14
.end method

.method public static getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v1, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->checkLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedLibraryList()[Ljava/lang/String;
    .locals 8

    sget-boolean v6, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    sget-object v7, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v5, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v5, v3, v1}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v6

    add-int/lit8 v3, v6, 0x0

    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v5, v3, v1}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v6

    add-int/2addr v3, v6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v6, v5, v0

    aput-object v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private static initializeMapData()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmartCropping"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmpsManager"

    const-string/jumbo v2, "com.samsung.audio.SmpsManager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "VeSDK"

    const-string/jumbo v2, "com.samsung.app.video.editor.external.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SPay"

    const-string/jumbo v2, "android.spay.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TmoWfcUtils"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SamsungAndroidDRK"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmartCropping"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmpsManager"

    const-string/jumbo v2, "/system/framework/SmpsManager.jar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "VeSDK"

    const-string/jumbo v2, "/system/framework/videoeditor_sdk.jar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SPay"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TmoWfcUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SamsungAndroidDRK"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSecureStorage"

    const-string/jumbo v2, "secure_storage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISecureStorage"

    const-string/jumbo v2, "secure_storage_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBarcode"

    const-string/jumbo v2, "saiv_barcode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSmartCropping"

    const-string/jumbo v2, "smart_cropping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeParallelCV"

    const-string/jumbo v2, "OpenCv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSOMP"

    const-string/jumbo v2, "somp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISaivHprFaceCMHSupport"

    const-string/jumbo v2, "saiv_HprFace_cmh_support_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBeautySolution"

    const-string/jumbo v2, "saiv_BeautySolution"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSecureStorage"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISecureStorage"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBarcode"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSmartCropping"

    const-string/jumbo v2, "2.0.9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeParallelCV"

    const-string/jumbo v2, "3.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSOMP"

    const-string/jumbo v2, "3.1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISaivHprFaceCMHSupport"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBeautySolution"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isSupportedLibrary(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v1, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

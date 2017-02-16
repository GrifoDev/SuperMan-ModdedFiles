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

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I
    .locals 3
    .param p0, "supportedLibraryList"    # [Ljava/lang/String;
    .param p1, "numSupportedLibrary"    # I
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

    .prologue
    .line 210
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 211
    .local v0, "numAddedLibraries":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/util/SemLibraryHelper;->isSupportedLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    add-int v2, p1, v0

    aput-object v1, p0, v2

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private static checkLibrary(Ljava/lang/String;)Z
    .locals 4
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v1, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "/system/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    return v3

    .line 121
    :cond_0
    const-string/jumbo v1, "/system/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    return v3

    .line 123
    :cond_1
    const-string/jumbo v1, "/system/vendor/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    return v3

    .line 125
    :cond_2
    const-string/jumbo v1, "/system/vendor/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    return v3

    .line 128
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static fileFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "subdirectory"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 89
    .local v3, "filelist":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 90
    aget-object v2, v3, v4

    .line 91
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    return v7

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    return v7

    .line 89
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    return v6

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return v6
.end method

.method private static getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 142
    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, "jarFilename":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 145
    :try_start_0
    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 146
    .local v5, "klass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v5    # "klass":Ljava/lang/Class;
    .local v2, "instance":Ljava/lang/Object;
    :goto_0
    move-object v8, v2

    .line 162
    check-cast v8, Lcom/samsung/android/util/LibraryVersionQuery;

    .line 163
    .local v8, "q":Lcom/samsung/android/util/LibraryVersionQuery;
    invoke-interface {v8}, Lcom/samsung/android/util/LibraryVersionQuery;->getLibraryVersion()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "version":Ljava/lang/String;
    return-object v9

    .line 147
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v8    # "q":Lcom/samsung/android/util/LibraryVersionQuery;
    .end local v9    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    return-object v14

    .line 152
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "jarFile":Ljava/io/File;
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

    .line 155
    .local v7, "loader":Ldalvik/system/DexClassLoader;
    sget-object v10, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 156
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "instance":Ljava/lang/Object;
    goto :goto_0

    .line 157
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "jarFile":Ljava/io/File;
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "loader":Ldalvik/system/DexClassLoader;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    return-object v14
.end method

.method public static getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-boolean v1, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 184
    return-object v0

    .line 186
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method private static getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->checkLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedLibraryList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 226
    sget-boolean v6, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v6, :cond_0

    .line 227
    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    .line 230
    :cond_0
    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    sget-object v7, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v5, v6, [Ljava/lang/String;

    .line 231
    .local v5, "supportedLibraryList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 233
    .local v3, "numSupportedLibrary":I
    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 234
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {v5, v3, v1}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v6

    add-int/lit8 v3, v6, 0x0

    .line 237
    sget-object v6, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 238
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    invoke-static {v5, v3, v1}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v6

    add-int/2addr v3, v6

    .line 241
    new-array v4, v3, [Ljava/lang/String;

    .line 242
    .local v4, "returnedList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 243
    aget-object v6, v5, v0

    aput-object v6, v4, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return-object v4
.end method

.method private static initializeMapData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmartCropping"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmpsManager"

    const-string/jumbo v2, "com.samsung.audio.SmpsManager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "VeSDK"

    const-string/jumbo v2, "com.samsung.app.video.editor.external.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SPay"

    const-string/jumbo v2, "android.spay.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TmoWfcUtils"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SamsungAndroidDRK"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmartCropping"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SmpsManager"

    const-string/jumbo v2, "/system/framework/SmpsManager.jar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "VeSDK"

    const-string/jumbo v2, "/system/framework/videoeditor_sdk.jar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SPay"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TmoWfcUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SamsungAndroidDRK"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSecureStorage"

    const-string/jumbo v2, "secure_storage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISecureStorage"

    const-string/jumbo v2, "secure_storage_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBarcode"

    const-string/jumbo v2, "saiv_barcode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSmartCropping"

    const-string/jumbo v2, "smart_cropping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeParallelCV"

    const-string/jumbo v2, "OpenCv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSOMP"

    const-string/jumbo v2, "somp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISaivHprFaceCMHSupport"

    const-string/jumbo v2, "saiv_HprFace_cmh_support_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBeautySolution"

    const-string/jumbo v2, "saiv_BeautySolution"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSecureStorage"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISecureStorage"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBarcode"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSmartCropping"

    const-string/jumbo v2, "2.0.9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeParallelCV"

    const-string/jumbo v2, "3.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSOMP"

    const-string/jumbo v2, "3.1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "JNISaivHprFaceCMHSupport"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NativeSaivBeautySolution"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static isSupportedLibrary(Ljava/lang/String;)Z
    .locals 2
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-boolean v1, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v1, :cond_0

    .line 197
    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "returnedObject":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 204
    const/4 v1, 0x0

    return v1

    .line 206
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

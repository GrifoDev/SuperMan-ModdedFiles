.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Beginning package preload"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    invoke-virtual {v9, p1, p2, p3}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    array-length v10, v4

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v4, v9

    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v9, "preloadInZygote"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "preloadInZygote returned false"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v8

    if-eqz v5, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Package preload done"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :catch_0
    move-exception v0

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Exception while preloading package"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Error writing to command socket"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x1

    return v9
.end method

.method protected isPreloadComplete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected preload()V
    .locals 0

    return-void
.end method

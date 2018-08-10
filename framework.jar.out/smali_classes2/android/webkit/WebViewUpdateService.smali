.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

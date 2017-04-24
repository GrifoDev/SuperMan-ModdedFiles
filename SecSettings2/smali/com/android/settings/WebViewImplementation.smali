.class public Lcom/android/settings/WebViewImplementation;
.super Lcom/android/settings/InstrumentedActivity;
.source "WebViewImplementation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/settings/WebViewImplementation;)Landroid/webkit/IWebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WebViewImplementation;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x195

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/WebViewImplementation;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/WebViewImplementation;->finish()V

    return-void

    :cond_0
    const-string/jumbo v8, "webviewupdate"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/WebViewImplementation;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/WebViewImplementation;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v8}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v7, "WebViewImplementation"

    const-string/jumbo v8, "No WebView providers available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/WebViewImplementation;->finish()V

    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/settings/WebViewImplementation;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v8}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    const/4 v0, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, v5, v7

    iget-object v9, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v4, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b0121

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/android/settings/WebViewImplementation$1;

    invoke-direct {v9, p0, v6}, Lcom/android/settings/WebViewImplementation$1;-><init>(Lcom/android/settings/WebViewImplementation;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v7, v0, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "WebViewImplementation"

    const-string/jumbo v8, "Problem reaching webviewupdate service"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/settings/WebViewImplementation;->finish()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/WebViewImplementation;->finish()V

    return-void
.end method

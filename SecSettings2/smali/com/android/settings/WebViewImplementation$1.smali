.class Lcom/android/settings/WebViewImplementation$1;
.super Ljava/lang/Object;
.source "WebViewImplementation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WebViewImplementation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WebViewImplementation;

.field final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/WebViewImplementation;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WebViewImplementation$1;->this$0:Lcom/android/settings/WebViewImplementation;

    iput-object p2, p0, Lcom/android/settings/WebViewImplementation$1;->val$values:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/WebViewImplementation$1;->this$0:Lcom/android/settings/WebViewImplementation;

    invoke-static {v1}, Lcom/android/settings/WebViewImplementation;->-get0(Lcom/android/settings/WebViewImplementation;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/WebViewImplementation$1;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/WebViewImplementation$1;->this$0:Lcom/android/settings/WebViewImplementation;

    invoke-virtual {v1}, Lcom/android/settings/WebViewImplementation;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WebViewImplementation"

    const-string/jumbo v2, "Problem reaching webviewupdate service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/coreapps/CoreAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgifDownloadListener"
.end annotation


# instance fields
.field mCallId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;->mCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCancel   id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public updateStatus(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadListener - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "downloadListener - call = null"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$200(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/net/Uri;Lcom/android/incallui/Call;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") downloaded, but failed to access"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "DownloadListener.STATUS_FAILED"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

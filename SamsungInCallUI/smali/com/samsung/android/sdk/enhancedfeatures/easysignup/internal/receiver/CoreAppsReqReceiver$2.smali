.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/CoreAppsReqReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/BroadcasterToCoreapps;->sendBroadcastServiceOffResult(Landroid/content/Context;Z)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->getServiceListener()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceResponse;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;->onServiceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceResponse;)V

    :cond_0
    return-void
.end method

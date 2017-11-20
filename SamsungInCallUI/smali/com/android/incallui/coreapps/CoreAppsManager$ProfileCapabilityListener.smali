.class public Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/coreapps/CoreAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileCapabilityListener"
.end annotation


# instance fields
.field mCallId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;->mCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetProfileAndCapabilityListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "GetProfileAndCapabilityListener onSuccess"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->getAppList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->getAppid()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/coreapps/CoreAppsUtils;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v2, "GetProfileAndCapabilityListener matched app_id"

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;->mCallId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$300(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;)V

    goto :goto_0
.end method

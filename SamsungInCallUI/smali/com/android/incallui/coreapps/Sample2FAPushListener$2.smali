.class Lcom/android/incallui/coreapps/Sample2FAPushListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/coreapps/PermissionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/Sample2FAPushListener;->onAuthConfirm(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/Sample2FAPushListener;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/Sample2FAPushListener;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/Sample2FAPushListener$2;->this$0:Lcom/android/incallui/coreapps/Sample2FAPushListener;

    iput-object p2, p0, Lcom/android/incallui/coreapps/Sample2FAPushListener$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 0

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/coreapps/Sample2FAPushListener$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->register2FA(ILcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    :cond_0
    return-void
.end method

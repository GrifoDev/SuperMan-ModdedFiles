.class Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

.field final synthetic val$authcode:Ljava/lang/String;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    iput-object p2, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;->val$authcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;->val$authcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->refuse2FA(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    :cond_0
    return-void
.end method

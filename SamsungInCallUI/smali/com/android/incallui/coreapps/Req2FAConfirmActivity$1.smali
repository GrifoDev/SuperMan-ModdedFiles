.class Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry...\nError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;->getErrorCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getErrorMessage(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2FA cc & mobile number send to server success."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->finish()V

    return-void
.end method

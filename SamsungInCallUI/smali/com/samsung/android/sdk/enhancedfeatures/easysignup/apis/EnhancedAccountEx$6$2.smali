.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->onDeviceRegCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;->val$data:Landroid/os/Bundle;

    const-string v3, "extra_error_code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "auth failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    return-void
.end method

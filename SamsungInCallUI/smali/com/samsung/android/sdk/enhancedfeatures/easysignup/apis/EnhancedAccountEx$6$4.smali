.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;
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

.field final synthetic val$msisdn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;->val$msisdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;->val$msisdn:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;)V

    return-void
.end method

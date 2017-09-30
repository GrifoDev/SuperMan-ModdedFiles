.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;

.field final synthetic val$result:Lcom/samsung/android/sdk/ssf/SsfResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->val$result:Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->val$result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v2, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/MtAuthCodeTransaction$1;->val$result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    :cond_0
    return-void
.end method

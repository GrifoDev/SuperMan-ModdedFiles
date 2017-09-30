.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

.field final synthetic val$errorCode:I

.field final synthetic val$errorListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->val$errorListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->val$errorListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->val$errorListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction$1;->val$errorCode:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    :cond_0
    return-void
.end method

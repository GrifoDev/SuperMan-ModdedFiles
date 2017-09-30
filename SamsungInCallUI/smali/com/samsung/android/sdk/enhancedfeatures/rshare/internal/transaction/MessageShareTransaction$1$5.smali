.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;

.field final synthetic val$mresponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

.field final synthetic val$reqWhat:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->val$mresponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->val$reqWhat:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->val$mresponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->val$reqWhat:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setShareType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1$5;->val$mresponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;

.field final synthetic val$response:Lcom/samsung/android/sdk/ssf/file/io/TimeStampResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;Lcom/samsung/android/sdk/ssf/file/io/TimeStampResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1$1;->val$response:Lcom/samsung/android/sdk/ssf/file/io/TimeStampResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1$1;->val$response:Lcom/samsung/android/sdk/ssf/file/io/TimeStampResponse;

    iget-object v1, v1, Lcom/samsung/android/sdk/ssf/file/io/TimeStampResponse;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->initServerTimeStampResponse(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetServerTimeStampTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;

.field final synthetic val$finalContentsTokenMetaList:Ljava/util/ArrayList;

.field final synthetic val$finalLastTimestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->val$finalLastTimestamp:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->val$finalContentsTokenMetaList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->val$finalLastTimestamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setLastTimeStamp(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->val$finalContentsTokenMetaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setReceivedContents(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1$6;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;)V

    return-void
.end method

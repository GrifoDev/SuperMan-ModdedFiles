.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;

.field final synthetic val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getContentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setContentToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getExpiredTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setExpiryTime(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getShareCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setShareCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    iget v1, v1, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->share_type:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setShareType(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

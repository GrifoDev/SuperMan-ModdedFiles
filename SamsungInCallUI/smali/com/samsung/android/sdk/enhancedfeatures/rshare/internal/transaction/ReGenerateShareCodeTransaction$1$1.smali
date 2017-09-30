.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;

.field final synthetic val$reqWhat:I

.field final synthetic val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;ILcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$reqWhat:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$reqWhat:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setRequestToken(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setContentsTokenDetails(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->contentToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setContentToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->share_code:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->share_code:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ShareCode;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareCode;->share_code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setShareCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->share_code:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ShareCode;

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareCode;->expired_time:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setExpiryTime(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsResponse;->contents_total_to_upload:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setContentsTotalToUpload(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ReGenerateShareCodeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

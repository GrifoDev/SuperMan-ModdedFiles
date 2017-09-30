.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;

.field final synthetic val$finalUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

.field final synthetic val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->val$finalUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;

    iget-wide v2, v1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;->content_token_expired_time:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setExpiryTime(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->val$finalUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setUrls([Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

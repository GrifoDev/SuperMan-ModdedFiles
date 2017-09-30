.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

.field final synthetic val$cookie:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;->val$cookie:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;->val$cookie:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->to_multi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setGroupId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;->val$cookie:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setFolderOrsUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method

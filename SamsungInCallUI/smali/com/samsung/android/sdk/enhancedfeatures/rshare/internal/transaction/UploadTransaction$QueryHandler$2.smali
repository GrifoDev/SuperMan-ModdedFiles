.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;)V

    return-void
.end method

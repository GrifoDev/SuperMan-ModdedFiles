.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->onBulkInsertComplete(ILjava/lang/Object;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method

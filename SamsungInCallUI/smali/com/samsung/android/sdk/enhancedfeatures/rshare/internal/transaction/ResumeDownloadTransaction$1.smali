.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

.field final synthetic val$downloadErrorResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$1;->val$downloadErrorResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$1;->val$downloadErrorResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method

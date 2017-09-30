.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;

.field final synthetic val$fileInformation:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1$1;->val$fileInformation:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1$1;->val$fileInformation:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V

    return-void
.end method

.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;

.field final synthetic val$res:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3$1;->val$res:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadBinaryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$3$1;->val$res:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadBinaryListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadBinaryResponse;)V

    return-void
.end method

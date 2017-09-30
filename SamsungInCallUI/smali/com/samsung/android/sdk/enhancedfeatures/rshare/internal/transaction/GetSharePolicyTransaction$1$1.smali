.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;

.field final synthetic val$res:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;->val$res:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;->val$res:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;)V

    return-void
.end method

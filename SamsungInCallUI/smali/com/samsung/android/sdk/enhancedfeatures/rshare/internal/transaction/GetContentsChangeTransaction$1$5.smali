.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;

.field final synthetic val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;->val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1$5;->val$resp:Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;)V

    return-void
.end method

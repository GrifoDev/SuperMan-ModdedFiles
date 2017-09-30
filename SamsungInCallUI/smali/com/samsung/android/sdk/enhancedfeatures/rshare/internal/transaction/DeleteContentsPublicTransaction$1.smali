.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeletePathsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;)Z

    move-result v9

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v11

    move-object v6, v4

    invoke-static/range {v0 .. v11}, Lcom/samsung/android/sdk/ssf/file/FileManager;->deleteFile(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    :cond_0
    return-void
.end method

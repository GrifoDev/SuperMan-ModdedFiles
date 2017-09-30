.class Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$imgContent:[B


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;Landroid/os/Bundle;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$imgContent:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "raw_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v4, "profile_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$imgContent:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->saveUserProfileImage(Landroid/content/Context;JI[B)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "raw_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v3, "profile_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v5, "image_url"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$imgContent:[B

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertOrUpdateProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "image_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v3, "profile_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v5, "image_url"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$imgContent:[B

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$000()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v1, "raw_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

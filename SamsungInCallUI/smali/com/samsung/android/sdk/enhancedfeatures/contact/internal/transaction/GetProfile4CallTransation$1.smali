.class Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    const/16 v1, 0xc8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    const-string v0, "Profile details success."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;-><init>()V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$400()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    iget-object v4, v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listner:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getImage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->downloadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    move-object p2, v5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->setStatus(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;)V

    goto :goto_0

    :pswitch_1
    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    const-string v0, "Profile details success."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    check-cast p2, Lcom/android/volley/NetworkResponse;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/volley/NetworkResponse;->data:[B

    check-cast v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile image download success, image size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Kbyte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->setImageContent([B)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    move-object p2, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

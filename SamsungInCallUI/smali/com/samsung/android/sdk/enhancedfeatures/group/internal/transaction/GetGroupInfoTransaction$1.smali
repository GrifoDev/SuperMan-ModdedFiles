.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setAppId(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->group_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setId(Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->option:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setOption(I)V

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setOwnerId(Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->sid:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setSid(I)V

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setType(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->created_at:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setCreatedAt(J)V

    iget v1, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->members_count:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setMembersCount(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setUserData(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupInfo;->meta_data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->setMetaData(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;)V

    goto :goto_0
.end method

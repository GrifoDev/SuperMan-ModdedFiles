.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 10

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setUserData(Ljava/lang/Object;)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->members_count:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setMemberCount(I)V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setId(Ljava/lang/String;)V

    iget v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups_count:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setCount(I)V

    iget v5, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups_count:I

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-direct {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setId(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->group_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->app_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setAppId(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->owner_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOwnerId(Ljava/lang/String;)V

    iget v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->sid:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setSid(I)V

    iget v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->option:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOption(I)V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->created_at:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setCreatedAt(J)V

    iget v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->members_count:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setMembersCount(I)V

    iget v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->status:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setStatus(I)V

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setType(Ljava/lang/String;)V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->meta_data:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setMetaData(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setGroups(Ljava/util/List;)V

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setGroups(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;)V

    goto/16 :goto_0
.end method

.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setId(Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->total:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setTotal(I)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->count:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setCount(I)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->display:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setDisplay(I)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->offset:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setOffset(I)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->pages_remain:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setPagesRemain(I)V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->members:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/Member;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/group/io/Member;->id:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/group/io/Member;->optional_id:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/sdk/ssf/group/io/Member;->permission:I

    iget v0, v0, Lcom/samsung/android/sdk/ssf/group/io/Member;->status:I

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->setMembers(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;)V

    goto :goto_0
.end method

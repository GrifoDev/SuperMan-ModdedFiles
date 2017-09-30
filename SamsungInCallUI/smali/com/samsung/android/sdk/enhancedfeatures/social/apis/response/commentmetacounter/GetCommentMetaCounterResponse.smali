.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected comment_id:Ljava/lang/String;

.field protected created_at:J

.field protected member_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected meta_key:Ljava/lang/String;

.field protected only_once:Ljava/lang/Boolean;

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->created_at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->member_list:Ljava/util/List;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyOnce()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->only_once:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->value:I

    return v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->created_at:J

    return-void
.end method

.method public setMemberList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->member_list:Ljava/util/List;

    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setOnlyOnce(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->only_once:Ljava/lang/Boolean;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->value:I

    return-void
.end method

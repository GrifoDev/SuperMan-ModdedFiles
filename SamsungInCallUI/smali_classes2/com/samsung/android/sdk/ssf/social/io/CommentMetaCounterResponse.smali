.class public Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected comment_id:Ljava/lang/String;

.field protected created_at:Ljava/lang/Long;

.field protected member_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected meta_key:Ljava/lang/String;

.field protected only_once:Z

.field protected updated_at:Ljava/lang/Long;

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->member_list:Ljava/util/List;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->value:I

    return v0
.end method

.method public isOnlyOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->only_once:Z

    return v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->created_at:Ljava/lang/Long;

    return-void
.end method

.method public setMemberList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->member_list:Ljava/util/List;

    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setOnlyOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->only_once:Z

    return-void
.end method

.method public setUpdatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->updated_at:Ljava/lang/Long;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->value:I

    return-void
.end method

.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected comment_id:Ljava/lang/String;

.field protected updated_at:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->updated_at:Ljava/lang/Long;

    return-void
.end method

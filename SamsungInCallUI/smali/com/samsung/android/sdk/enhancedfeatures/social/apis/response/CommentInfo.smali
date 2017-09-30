.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;
.super Ljava/lang/Object;


# instance fields
.field protected comment_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;->comment_id:Ljava/lang/String;

    return-void
.end method

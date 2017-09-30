.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;
    }
.end annotation


# instance fields
.field private cancel_action:Z

.field private comment_id:Ljava/lang/String;

.field private inc:I

.field private meta_key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->comment_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->meta_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->inc:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->cancel_action:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getCancelAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->cancel_action:Z

    return v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInc()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->inc:I

    return v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

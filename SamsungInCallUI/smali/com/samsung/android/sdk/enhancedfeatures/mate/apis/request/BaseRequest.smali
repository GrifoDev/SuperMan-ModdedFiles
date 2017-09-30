.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;
    }
.end annotation


# instance fields
.field private req_id:I

.field private user_Data:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;->req_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;->user_Data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;->req_id:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;->user_Data:Ljava/lang/Object;

    return-object v0
.end method

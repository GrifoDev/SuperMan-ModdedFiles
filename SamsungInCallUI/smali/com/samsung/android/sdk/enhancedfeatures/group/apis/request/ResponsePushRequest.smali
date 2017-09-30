.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;
    }
.end annotation


# instance fields
.field private action:I

.field private id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->action:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->action:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->id:Ljava/lang/String;

    return-object v0
.end method

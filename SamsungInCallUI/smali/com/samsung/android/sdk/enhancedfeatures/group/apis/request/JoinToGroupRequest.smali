.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    }
.end annotation


# instance fields
.field private member_id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private optional_id:Ljava/lang/String;

.field private requester_id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->member_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->requester_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->optional_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getMember_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->member_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->optional_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRequester_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->requester_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->type:Ljava/lang/String;

    return-object v0
.end method

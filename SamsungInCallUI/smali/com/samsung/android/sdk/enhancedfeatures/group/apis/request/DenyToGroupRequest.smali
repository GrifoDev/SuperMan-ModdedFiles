.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;
    }
.end annotation


# instance fields
.field private groupId:Ljava/lang/String;

.field private member_id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private requester_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->member_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->requester_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->message:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->groupId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMember_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->member_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRequester_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->requester_id:Ljava/lang/String;

    return-object v0
.end method

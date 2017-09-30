.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private member_id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private optional_id:Ljava/lang/String;

.field private requester_id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->member_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->requester_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->optional_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->message:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$1;)V

    return-object v0
.end method

.method public setMember_id(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->member_id:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setOptional_id(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->optional_id:Ljava/lang/String;

    return-object p0
.end method

.method public setRequester_id(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->requester_id:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

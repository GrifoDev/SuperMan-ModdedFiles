.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;
.super Ljava/lang/Object;


# instance fields
.field private contentsToken:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private sender:Ljava/lang/String;

.field private type:C


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/share/io/PushORSData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/share/io/PushORSData;->getDuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->sender:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/share/io/PushORSData;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->groupId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->contentsToken:Ljava/lang/String;

    iput-char p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->type:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->sender:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->contentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getType()C
    .locals 1

    iget-char v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->type:C

    return v0
.end method

.method public setContentsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->contentsToken:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->sender:Ljava/lang/String;

    return-void
.end method

.method public setType(C)V
    .locals 0

    iput-char p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->type:C

    return-void
.end method

.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private display:I

.field private id:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->display:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->offset:I

    return v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$1;)V

    return-object v0
.end method

.method public setDisplay(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->display:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setOffset(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->offset:I

    return-object p0
.end method

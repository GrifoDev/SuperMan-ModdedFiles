.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;
    }
.end annotation


# instance fields
.field private display:I

.field private id:Ljava/lang/String;

.field private offset:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->display:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->offset:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getDisplay()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->display:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->offset:I

    return v0
.end method

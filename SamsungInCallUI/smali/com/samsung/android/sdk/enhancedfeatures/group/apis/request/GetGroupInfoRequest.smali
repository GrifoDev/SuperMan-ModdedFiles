.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;->id:Ljava/lang/String;

    return-object v0
.end method

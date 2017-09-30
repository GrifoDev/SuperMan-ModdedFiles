.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;
    }
.end annotation


# instance fields
.field private appVersion:Ljava/lang/String;

.field private rsrc_id:Ljava/lang/String;

.field private st_fltr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->rsrc_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->st_fltr:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->appVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->st_fltr:Ljava/util/List;

    return-object v0
.end method

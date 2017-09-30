.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;",
        ">;"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->st_fltr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->appVersion:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;)V

    return-object v0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->rsrc_id:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusFilter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest$Builder;->st_fltr:Ljava/util/List;

    return-void
.end method

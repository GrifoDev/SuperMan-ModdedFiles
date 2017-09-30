.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;
    }
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private req_ver:Ljava/lang/String;

.field private svc_id:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->svc_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->req_ver:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->req_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->svc_id:I

    return v0
.end method

.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;
    }
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private req_ver:Ljava/lang/String;

.field private rsrc_id:Ljava/lang/String;

.field private setup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->rsrc_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->lang:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->req_ver:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->setup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->req_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSetup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;->setup:Ljava/lang/String;

    return-object v0
.end method

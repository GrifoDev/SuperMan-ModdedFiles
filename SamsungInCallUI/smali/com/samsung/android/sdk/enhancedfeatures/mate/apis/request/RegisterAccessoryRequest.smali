.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;
    }
.end annotation


# instance fields
.field private cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

.field private ser_no:Ljava/lang/String;

.field private svc_id:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->svc_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->ser_no:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-object v0
.end method

.method public getCpServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->svc_id:I

    return v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->ser_no:Ljava/lang/String;

    return-object v0
.end method

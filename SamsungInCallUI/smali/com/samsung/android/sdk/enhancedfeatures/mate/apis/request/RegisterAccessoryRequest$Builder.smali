.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

.field private ser_no:Ljava/lang/String;

.field private svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->svc_id:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->ser_no:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;)V

    return-object v0
.end method

.method public setCpCustomInfo(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-object p0
.end method

.method public setCpServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->svc_id:I

    return-object p0
.end method

.method public setSerialNo(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest$Builder;->ser_no:Ljava/lang/String;

    return-object p0
.end method

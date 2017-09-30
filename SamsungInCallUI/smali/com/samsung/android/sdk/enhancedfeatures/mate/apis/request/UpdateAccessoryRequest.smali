.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;
    }
.end annotation


# instance fields
.field private cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

.field private rsrc_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->rsrc_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

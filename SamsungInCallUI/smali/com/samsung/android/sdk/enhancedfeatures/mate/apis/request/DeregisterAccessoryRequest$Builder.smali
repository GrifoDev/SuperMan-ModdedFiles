.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private rsrc_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;)V

    return-object v0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;->rsrc_id:Ljava/lang/String;

    return-object p0
.end method

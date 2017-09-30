.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;
    }
.end annotation


# instance fields
.field private rsrc_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;->rsrc_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

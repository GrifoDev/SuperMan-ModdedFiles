.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field private mShareCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeletePinCodeShareRequest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mShareCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mShareCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mShareCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sharecode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mShareCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, one of (contentstoken and sharecode)  are not null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    goto :goto_0
.end method

.method public setGcmPriority(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object p0
.end method

.method public setShareCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeletePinCodeShareRequest$Builder;->mShareCode:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushMessage"
.end annotation


# instance fields
.field private desc:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private ope:I

.field private pkg:Ljava/lang/String;

.field private ti:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->desc:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ope:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ope:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ti:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->desc:Ljava/lang/String;

    return-void
.end method

.method public setExternalFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-void
.end method

.method public setOpenType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ope:I

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->ti:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->url:Ljava/lang/String;

    return-void
.end method

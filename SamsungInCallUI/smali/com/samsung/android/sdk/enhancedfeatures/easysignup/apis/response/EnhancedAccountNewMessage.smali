.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;
.super Ljava/lang/Object;


# instance fields
.field protected desc:Ljava/lang/String;

.field protected ext:Ljava/lang/String;

.field protected img:Ljava/lang/String;

.field protected ope:I

.field protected pkg:Ljava/lang/String;

.field protected ti:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->ti:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ti:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->desc:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->pkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->pkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->img:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ext:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;->ope:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ope:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ope:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ti:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnhancedAccountNewMessage [ title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , Opentype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , imageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalFields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

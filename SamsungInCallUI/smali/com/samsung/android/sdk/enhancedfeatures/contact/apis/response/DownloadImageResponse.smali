.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;
.super Ljava/lang/Object;


# instance fields
.field protected imageContent:[B

.field protected imageLocalFilePath:Ljava/lang/String;

.field protected imageNo:I

.field protected imageUrl:Ljava/lang/String;

.field protected nm:Ljava/lang/String;

.field protected rawId:Ljava/lang/String;

.field protected status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->rawId:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageNo:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageLocalFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageContent:[B

    return-void
.end method


# virtual methods
.method public getImageContent()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageContent:[B

    return-object v0
.end method

.method public getImageLocalFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageLocalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageNo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageNo:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->nm:Ljava/lang/String;

    return-object v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setImageContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageContent:[B

    return-void
.end method

.method public setImageLocalFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageLocalFilePath:Ljava/lang/String;

    return-void
.end method

.method public setImageNo(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageNo:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->nm:Ljava/lang/String;

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/DownloadImageResponse;->status:Ljava/lang/String;

    return-void
.end method

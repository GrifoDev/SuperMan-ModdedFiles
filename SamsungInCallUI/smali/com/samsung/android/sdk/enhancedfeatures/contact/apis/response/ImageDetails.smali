.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;
.super Ljava/lang/Object;


# instance fields
.field protected img:Ljava/lang/String;

.field protected no:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->no:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->img:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->no:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->no:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->img:Ljava/lang/String;

    return-void
.end method

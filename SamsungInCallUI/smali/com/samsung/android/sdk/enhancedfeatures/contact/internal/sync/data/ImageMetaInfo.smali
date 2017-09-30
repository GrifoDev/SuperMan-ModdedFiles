.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;
.super Ljava/lang/Object;


# instance fields
.field protected id:Ljava/lang/String;

.field protected img:Ljava/lang/String;

.field protected no:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->id:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->no:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->img:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->no:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->img:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->no:I

    return-void
.end method

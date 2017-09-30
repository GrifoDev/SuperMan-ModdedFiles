.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;
.super Ljava/lang/Object;


# instance fields
.field private mIndex:I

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mIndex:I

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mPhoneNumber:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mIndex:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mIndex:I

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

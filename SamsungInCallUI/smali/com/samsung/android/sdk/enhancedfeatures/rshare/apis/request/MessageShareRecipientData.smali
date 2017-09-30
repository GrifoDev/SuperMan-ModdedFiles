.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;
.super Ljava/lang/Object;


# instance fields
.field private countryCallingCode:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->countryCallingCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->phoneNumber:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->index:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->countryCallingCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->index:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->countryCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCallingCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->countryCallingCode:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->index:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->phoneNumber:Ljava/lang/String;

    return-void
.end method

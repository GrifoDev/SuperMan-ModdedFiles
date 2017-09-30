.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;
    }
.end annotation


# instance fields
.field private mCountryCodeIndex:I

.field private mCountryCodeInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mPhoneNumber:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mCountryCodeIndex:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mCountryCodeInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCountryCodeIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mCountryCodeIndex:I

    return v0
.end method

.method public getCountryCodeInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mCountryCodeInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

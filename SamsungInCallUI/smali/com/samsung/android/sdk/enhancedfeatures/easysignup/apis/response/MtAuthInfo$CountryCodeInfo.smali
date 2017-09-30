.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryCodeInfo"
.end annotation


# instance fields
.field private mCountryCallingCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mIsoCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mCountryName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mIsoCountryCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mCountryCallingCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mCountryCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/MtAuthInfo$CountryCodeInfo;->mIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

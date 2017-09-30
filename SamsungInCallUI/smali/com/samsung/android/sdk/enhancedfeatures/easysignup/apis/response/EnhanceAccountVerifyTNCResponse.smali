.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;
.super Ljava/lang/Object;


# instance fields
.field public mRequiredMarketingAgreementAccepted:Ljava/lang/String;

.field public mRequiredPrivacyAccepted:Ljava/lang/String;

.field public mRequiredTNCAccepted:Ljava/lang/String;

.field public mToken:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;->mToken:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;->mToken:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;->mRequiredTNCAccepted:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;->mRequiredPrivacyAccepted:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;->mRequiredMarketingAgreementAccepted:Ljava/lang/String;

    return-void
.end method

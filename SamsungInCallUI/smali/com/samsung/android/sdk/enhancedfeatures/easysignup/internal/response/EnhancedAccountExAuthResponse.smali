.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;
.super Ljava/lang/Object;


# instance fields
.field private mMsisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;->mMsisdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/response/EnhancedAccountExAuthResponse;->mMsisdn:Ljava/lang/String;

    return-void
.end method

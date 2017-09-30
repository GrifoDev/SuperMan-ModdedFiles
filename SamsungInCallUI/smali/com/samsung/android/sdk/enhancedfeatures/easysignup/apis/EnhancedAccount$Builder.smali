.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field GCM_ID:Ljava/lang/String;

.field SPP_APP_ID:Ljava/lang/String;

.field enhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGcmID(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->GCM_ID:Ljava/lang/String;

    const-string v0, "EnhancedAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM_ID id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PREFS_GCMID"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->GCM_ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addSppID(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->SPP_APP_ID:Ljava/lang/String;

    const-string v0, "EnhancedAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPP_APP_ID id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PREFS_SPPID"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->SPP_APP_ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->enhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->GCM_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->SPP_APP_ID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;)V

    return-object v0
.end method

.method public enhancedFeatures(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$Builder;->enhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object p0
.end method

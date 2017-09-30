.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "EasySignUp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAppUpdated(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "updated_app_version"

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getAppVersionCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "App version changed."

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp$1;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;->update(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security exception at checkAppUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasySignUp"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUpLib;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp;->checkAppUpdated(Landroid/content/Context;)V

    return-void
.end method

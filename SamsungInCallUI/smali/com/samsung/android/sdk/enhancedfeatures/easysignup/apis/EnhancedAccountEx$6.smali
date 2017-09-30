.class final Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->authDeviceByMo(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imsi:Ljava/lang/String;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->val$imsi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegCompleted(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "extra_auth_result"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v0, "key_msisdn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;->val$imsi:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$6;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

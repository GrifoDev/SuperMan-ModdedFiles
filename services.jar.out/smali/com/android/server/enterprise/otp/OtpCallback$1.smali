.class final Lcom/android/server/enterprise/otp/OtpCallback$1;
.super Ljava/lang/Thread;
.source "OtpCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$containerId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$tokenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$tokenId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$result:I

    iput-object p3, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$pkgName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$containerId:I

    iput-object p5, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "OTP_TOKEN_ID"

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$tokenId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "OTP_CALL_STATUS"

    iget v3, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$result:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.action.knox.otp.OTP_CALLBACK_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$containerId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/OtpCallback$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

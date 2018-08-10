.class Landroid/telephony/TelephonyManager$1;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

.field final synthetic val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$1;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USSD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ussdResponse cannot be null."

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "USSD_RESPONSE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/UssdResponse;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager$1;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getReturnMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager$1;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V

    goto :goto_0
.end method

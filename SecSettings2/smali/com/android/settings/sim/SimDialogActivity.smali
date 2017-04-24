.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$1;,
        Lcom/android/settings/sim/SimDialogActivity$2;,
        Lcom/android/settings/sim/SimDialogActivity$3;,
        Lcom/android/settings/sim/SimDialogActivity$4;,
        Lcom/android/settings/sim/SimDialogActivity$5;,
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "preferred_sim"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const-string/jumbo v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    const v1, 0x7f0b18d7

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    return-object v1

    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

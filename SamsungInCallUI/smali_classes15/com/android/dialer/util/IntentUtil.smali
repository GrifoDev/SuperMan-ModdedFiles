.class public Lcom/android/dialer/util/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
    }
.end annotation


# static fields
.field public static final CALL_ACTION:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final EXTRA_CALL_INITIATION_TYPE:Ljava/lang/String; = "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

.field private static final NO_PHONE_TYPE:I = -0x1

.field private static final SMS_URI_PREFIX:Ljava/lang/String; = "sms:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToExistingContactIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumberType"    # I

    .prologue
    .line 142
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 144
    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;II)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "videoState"    # I
    .param p3, "callIntiationType"    # I

    .prologue
    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v2, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    :cond_0
    return-object v1
.end method

.method public static getNewContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumberType"    # I

    .prologue
    .line 122
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 124
    return-object v0
.end method

.method public static getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p3, "phoneNumberType"    # I

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    const-string v0, "phone"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 155
    :cond_1
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 156
    const-string v0, "phone_type"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    :cond_2
    return-void
.end method

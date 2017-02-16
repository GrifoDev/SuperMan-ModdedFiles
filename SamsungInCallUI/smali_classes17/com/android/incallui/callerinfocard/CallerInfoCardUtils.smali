.class public Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;
.super Ljava/lang/Object;
.source "CallerInfoCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardUtils$SocialNetworkServiceLogin;
    }
.end annotation


# static fields
.field private static final MMS_APP_PACKAGE:Ljava/lang/String;

.field private static final SNS_GOOGLEPLUS_ACCOUNT_TYPE:Ljava/lang/String; = "com.sec.android.app.sns3.googleplus"

.field private static final TAG:Ljava/lang/String; = "CallerInfoCardUtils"

.field private static final mRawContactsProjection:[Ljava/lang/String;

.field private static final mSocialNetworkServiceAccountList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sns3.googleplus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRawContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static getSocialNetworkServiceLoginList(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "accountLoginList":I
    sget-object v4, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 337
    .local v1, "accountList":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 338
    .local v0, "account":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 339
    const-string v6, "com.sec.android.app.sns3.googleplus"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    or-int/lit8 v2, v2, 0x1

    .line 336
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "account":[Landroid/accounts/Account;
    .end local v1    # "accountList":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private static isDefaultSmsApp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "defaultSmsApplication":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 306
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 307
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return v1

    .line 310
    :cond_0
    const-string v1, "CallerInfoCardUtils"

    const-string v3, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 311
    goto :goto_0

    .line 315
    :cond_1
    sget-object v3, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    const-string v1, "CallerInfoCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultSmsApp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "default sms is not samsung\'s, return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isEmailLogin(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.samsung.android.email"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 325
    .local v0, "account":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 326
    const-string v1, "CallerInfoCardUtils"

    const-string v2, "isEmailLogin: return true"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    .line 329
    :cond_0
    const-string v1, "CallerInfoCardUtils"

    const-string v2, "isEmailLogin: return false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardSecureLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 349
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 350
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "isKeyguardSecureLocked - true"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    :goto_0
    return v1

    .line 356
    :cond_0
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "isKeyguardSecureLocked - false"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 364
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method public static startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/4 v5, 0x1

    .line 67
    const-string v2, "CallerInfoCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuery - type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "queryRequest":I
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 81
    .end local v0    # "queryRequest":I
    .local v1, "queryRequest":I
    :goto_0
    return v1

    .line 71
    .end local v1    # "queryRequest":I
    .restart local v0    # "queryRequest":I
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .end local v0    # "queryRequest":I
    .restart local v1    # "queryRequest":I
    goto :goto_0

    .line 73
    .end local v1    # "queryRequest":I
    .restart local v0    # "queryRequest":I
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 74
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v2

    or-int/2addr v0, v2

    .line 80
    const-string v2, "CallerInfoCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuery - queryRequest : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    .line 81
    .end local v0    # "queryRequest":I
    .restart local v1    # "queryRequest":I
    goto :goto_0
.end method

.method private static startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/4 v0, 0x4

    .line 131
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 132
    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    .line 133
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/4 v0, 0x2

    .line 118
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 119
    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    .line 120
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 121
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x40

    const/4 v6, 0x0

    .line 235
    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_2

    .line 236
    :cond_0
    iget-boolean v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isEmailLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 242
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 244
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 250
    const/4 v2, 0x0

    move v0, v6

    .line 255
    .end local v2    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 246
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/16 v0, 0x40

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 250
    const/4 v2, 0x0

    move v0, v7

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 250
    const/4 v2, 0x0

    throw v0

    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v0, v6

    .line 255
    goto :goto_0
.end method

.method private static startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/16 v0, 0x8

    .line 144
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 145
    :cond_0
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 148
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/16 v0, 0x10

    .line 155
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    .line 157
    :cond_0
    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v1}, Lcom/android/incallui/util/PackageHelpers;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    :cond_1
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 163
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    const/16 v2, 0x20

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 171
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isDefaultSmsApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const/4 v8, 0x0

    .line 173
    .local v8, "canonicalAddressesCursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 175
    .local v14, "threadsCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://mms-sms/canonical-addresses"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "PHONE_NUMBERS_EQUAL(address, ?, 0)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 177
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const-string v7, "_id DESC"

    .line 175
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    const-wide/16 v12, 0x0

    .line 181
    .local v12, "id":J
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 184
    .local v9, "columnIndex":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_1

    .line 185
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 189
    .end local v9    # "columnIndex":I
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_b

    .line 190
    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v11, "10"

    .line 192
    .local v11, "mUsingMode":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "threads"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recipient_ids=? AND (using_mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 194
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const-string v7, "_id DESC"

    .line 192
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 211
    .end local v11    # "mUsingMode":Ljava/lang/String;
    .end local v14    # "threadsCursor":Landroid/database/Cursor;
    .local v4, "threadsCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_2

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    .line 218
    .end local v4    # "threadsCursor":Landroid/database/Cursor;
    .end local v12    # "id":J
    :cond_2
    :goto_2
    const/16 v2, 0x20

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    const/16 v2, 0x20

    .line 221
    if-eqz v4, :cond_3

    .line 222
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v4, 0x0

    .line 228
    .end local v8    # "canonicalAddressesCursor":Landroid/database/Cursor;
    :cond_3
    :goto_3
    return v2

    .line 191
    .restart local v8    # "canonicalAddressesCursor":Landroid/database/Cursor;
    .restart local v12    # "id":J
    .restart local v14    # "threadsCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_2
    const-string v11, "0"

    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "threads"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "recipient_ids=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 198
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const-string v7, "_id DESC"

    .line 196
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .end local v14    # "threadsCursor":Landroid/database/Cursor;
    .restart local v4    # "threadsCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 201
    .end local v4    # "threadsCursor":Landroid/database/Cursor;
    .end local v12    # "id":J
    .restart local v14    # "threadsCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 202
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_6

    .line 203
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v8, 0x0

    .line 206
    :cond_6
    if-eqz v14, :cond_a

    .line 207
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    const/4 v4, 0x0

    .line 211
    .end local v14    # "threadsCursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v8, :cond_2

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    goto :goto_2

    .line 211
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "threadsCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    :cond_7
    throw v2

    .line 221
    .end local v14    # "threadsCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    if-eqz v4, :cond_8

    .line 222
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v4, 0x0

    :cond_8
    throw v2

    .line 228
    .end local v8    # "canonicalAddressesCursor":Landroid/database/Cursor;
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .restart local v8    # "canonicalAddressesCursor":Landroid/database/Cursor;
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "threadsCursor":Landroid/database/Cursor;
    :cond_a
    move-object v4, v14

    .local v4, "threadsCursor":Ljava/lang/Object;
    goto :goto_4

    .end local v4    # "threadsCursor":Ljava/lang/Object;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "id":J
    :cond_b
    move-object v4, v14

    .end local v14    # "threadsCursor":Landroid/database/Cursor;
    .local v4, "threadsCursor":Landroid/database/Cursor;
    goto :goto_1
.end method

.method private static startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "queryRequest":I
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForProfile(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    or-int/lit8 v0, v0, 0x1

    .line 92
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    or-int/lit8 v0, v0, 0x2

    .line 95
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    or-int/lit8 v0, v0, 0x4

    .line 98
    :cond_2
    return v0
.end method

.method private static startQueryForProfile(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/4 v0, 0x1

    .line 105
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 106
    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    .line 107
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    .line 262
    const/4 v9, 0x0

    .line 263
    .local v9, "marked":Z
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    if-ne p1, v0, :cond_7

    .line 264
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->getSocialNetworkServiceLoginList(Landroid/content/Context;)I

    move-result v6

    .line 265
    .local v6, "accountLoginList":I
    const-string v0, "CallerInfoCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountLoginList : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    if-nez v6, :cond_1

    .line 267
    const/4 v0, 0x0

    .line 299
    .end local v6    # "accountLoginList":I
    :goto_0
    return v0

    .line 269
    .restart local v6    # "accountLoginList":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRawContactsProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 271
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_7

    .line 273
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    const/4 v7, 0x0

    .line 276
    .local v7, "accountTypeAndDataSet":Ljava/lang/String;
    const-string v0, "account_type_and_data_set"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, "columnIndex":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    .line 278
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    :cond_3
    if-eqz p1, :cond_4

    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    :cond_4
    const/4 v0, 0x1

    and-int/lit8 v1, v6, 0x1

    if-ne v0, v1, :cond_2

    .line 283
    const-string v0, "com.google/plus"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/16 v0, 0x80

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .line 285
    const-string v0, "sourceid"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 286
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 287
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 294
    .end local v7    # "accountTypeAndDataSet":Ljava/lang/String;
    .end local v8    # "columnIndex":I
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 v2, 0x0

    .line 299
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "accountLoginList":I
    :cond_7
    if-eqz v9, :cond_8

    const/16 v0, 0x80

    goto :goto_0

    .line 294
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "accountLoginList":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 v2, 0x0

    throw v0

    .line 299
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "accountLoginList":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

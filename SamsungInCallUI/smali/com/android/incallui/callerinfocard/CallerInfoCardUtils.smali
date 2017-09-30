.class public Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;
.super Ljava/lang/Object;


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

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sns3.googleplus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSocialNetworkServiceLoginList(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v5, v5

    if-lez v5, :cond_0

    const-string v5, "com.sec.android.app.sns3.googleplus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isDefaultSmsApp(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    const-string v1, "CallerInfoCardUtils"

    const-string v2, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "CallerInfoCardUtils"

    const-string v2, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CallerInfoCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultSmsApp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->MMS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "CallerInfoCardUtils"

    const-string v2, "default sms is not samsung\'s, return false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isEmailLogin(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.samsung.android.email"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const-string v0, "CallerInfoCardUtils"

    const-string v1, "isEmailLogin: return true"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "CallerInfoCardUtils"

    const-string v1, "isEmailLogin: return false"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardSecureLocked(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallerInfoCardUtils"

    const-string v2, "isKeyguardSecureLocked - true"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "CallerInfoCardUtils"

    const-string v2, "isKeyguardSecureLocked - false"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 5

    const/4 v4, 0x1

    const-string v0, "CallerInfoCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "CallerInfoCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startQuery - queryRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 10

    const/4 v4, 0x0

    const/16 v7, 0x40

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    iget-boolean v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isEmailLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

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

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

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

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private static startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 6

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 6

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v1}, Lcom/android/incallui/util/PackageHelpers;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 10

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isDefaultSmsApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "PHONE_NUMBERS_EQUAL(address, ?, 0)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    const-wide/16 v0, 0x0

    if-eqz v6, :cond_b

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v8, v0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_a

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "10"

    move-object v3, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "threads"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recipient_ids=? AND (using_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    const/16 v0, 0x20

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v0, 0x20

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_4
    return v0

    :cond_3
    :try_start_3
    const-string v0, "0"

    move-object v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "threads"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "recipient_ids=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_5
    if-eqz v0, :cond_9

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v6, 0x0

    :goto_6
    if-eqz v7, :cond_8

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    :goto_7
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_5

    :cond_8
    move-object v2, v7

    goto :goto_7

    :cond_9
    move-object v6, v0

    goto :goto_6

    :cond_a
    move-object v2, v7

    goto :goto_2

    :cond_b
    move-wide v8, v0

    goto/16 :goto_0
.end method

.method private static startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForProfile(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0
.end method

.method private static startQueryForProfile(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I
    .locals 8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x80

    if-ne p1, v0, :cond_8

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->getSocialNetworkServiceLoginList(Landroid/content/Context;)I

    move-result v7

    const-string v0, "CallerInfoCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountLoginList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

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

    if-eqz v2, :cond_8

    move v0, v6

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const-string v3, "account_type_and_data_set"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz p1, :cond_4

    const/16 v3, 0x80

    if-ne p1, v3, :cond_2

    :cond_4
    const/4 v3, 0x1

    and-int/lit8 v4, v7, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "com.google/plus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x80

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const-string v0, "sourceid"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    if-eqz v0, :cond_7

    const/16 v0, 0x80

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v0, v6

    goto :goto_2
.end method

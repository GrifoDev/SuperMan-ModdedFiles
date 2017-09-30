.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;
.super Ljava/lang/Object;


# static fields
.field private static final CONTACT_AGENT_IS_FIRST_UPLOAD:Ljava/lang/String; = "is_first_upload"

.field private static final IS_STACKED_PUSH:Ljava/lang/String; = "is_stacked_push"

.field private static final KEY_CONTACT_TIME_STAMP:Ljava/lang/String; = "contact_timestamp"

.field private static final KEY_CONTACT_TOKEN:Ljava/lang/String; = "contact_token"

.field private static final PREF_FILE:Ljava/lang/String; = "contact_pref"

.field private static final PRIVACY_VALUE:Ljava/lang/String; = "privacy_value"

.field private static final SENT_PUSH_TIME_STAMP:Ljava/lang/String; = "sentpush_timestamp"

.field private static final STATUS_MESSAGE:Ljava/lang/String; = "status_message"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static sContactPackageName:Ljava/lang/String;

.field static sCtx:Landroid/content/Context;

.field private static sSentPushTimeStamp:J

.field private static sTimeStamp:J

.field private static shareWith:Landroid/net/Uri;

.field private static sharedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, -0x1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->getContactPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    const-string v0, "content://com.samsung.contacts.detail.profilesharing/ShareWith"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->shareWith:Landroid/net/Uri;

    const-string v0, "content://com.samsung.contacts.detail.profilesharing/SharedInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sharedItem:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAllPreference()V
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getContactToken(J)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "contact_timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, p0

    if-lez v3, :cond_0

    const-string v0, "contact_token"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPrivacy()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "privacy_value"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SharedItem"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showMyProfile_index"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrivacySettings() privacyValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->shareWith:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showMyProfile_index"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSentPushTimeStamp()J
    .locals 6

    const-wide/16 v4, -0x1

    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sentpush_timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStatusMessage()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStamp()J
    .locals 6

    const-wide/16 v4, -0x1

    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-wide v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    return-void
.end method

.method public static isFirstUpload()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_first_upload"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isIndividualItemsEnabled(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x31

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v3, "SharedItem"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIndividualItemsEnabled() key is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sharedItem:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v3, "email_checking"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-char v0, v0, v2

    if-ne v0, v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "organisation_checking"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string v3, "address_checking"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    aget-char v0, v0, v3

    if-ne v0, v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const-string v3, "date_checking"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    aget-char v0, v0, v3

    if-ne v0, v4, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v3, "contact_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIndividualItemsEnabled() key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_1
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContactAgentIndividualItemsEnabled key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "This device is supported coreapps"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setContactAgentPrivacySettings(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showMyProfile_index"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContactAgentPrivacySettings privacy is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "This device is supported coreapps"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized setContactToken(JLjava/lang/String;)V
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "contact_timestamp"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "contact_token"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setFirstUpload(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_first_upload"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_value"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized setSentPushTimeStamp(J)V
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sentpush_timestamp"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setStackedPush(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_stacked_push"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStatusMessage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status_message"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized setTimeStamp(J)V
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "timestamp"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

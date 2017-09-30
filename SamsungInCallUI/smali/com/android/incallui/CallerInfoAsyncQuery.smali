.class public Lcom/android/incallui/CallerInfoAsyncQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field public static final COLUMN_NAME_DATA_ID:Ljava/lang/String; = "data_id"

.field private static final DBG:Z = false

.field private static final DIRECTORY_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final IS_SIM:Ljava/lang/String; = "is_sim"

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallerInfoAsyncQuery;->DIRECTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallerInfoAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method public static getCallerInfoQueryProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.contacts/data/phones"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    :goto_0
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "display_name"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "number"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "normalized_number"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "label"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "type"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "lookup"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "photo_thumb_uri"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "photo_file_id"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "is_sim"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "display_name_source"

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "content://com.android.contacts/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    goto :goto_0

    :cond_1
    const-string v1, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "\'phone_lookup\' URI; using PhoneLookupSdkCompat.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    goto :goto_0

    :cond_2
    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    goto/16 :goto_0

    :cond_3
    const-string v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected prefix for contactRef \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getTwoPhoneCallerInfoQueryProjection(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTwoPhoneCallerInfoQueryProjection Unexpected prefix for contactRef \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTwoPhoneCallerInfoQueryProjection content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/phones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "getTwoPhoneCallerInfoQueryProjection \'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    :goto_0
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "display_name"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "number"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "normalized_number"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "label"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "type"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "lookup"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "photo_thumb_uri"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "photo_file_id"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "is_sim"

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "getTwoPhoneCallerInfoQueryProjection \'data\' URI; using Data.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "getTwoPhoneCallerInfoQueryProjection \'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    goto/16 :goto_0

    :cond_2
    const-string v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTwoPhoneCallerInfoQueryProjection Unexpected prefix for contactRef \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/xxxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static startDefaultDirectoryQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 6

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/calllog/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQueryInternal(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/net/Uri;)Lcom/android/incallui/CallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "##### CallerInfoAsyncQuery startContactProviderQuery()... #####"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/PermissionsUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "Dialer doesn\'t have permission to read contacts."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p0, p4, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/CallerInfoAsyncQuery;->startDefaultDirectoryQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;

    goto :goto_0
.end method

.method private static startQueryInternal(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/net/Uri;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p4

    check-cast v0, Lcom/android/incallui/Call;

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "voicemail"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sip"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->getTwoPhoneUserId(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_1
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "phone_lookup_with_profile"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/wrapper/ContentProviderWrapper;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput v2, p2, Lcom/android/incallui/CallerInfo;->queryUserID:I

    move v6, v2

    move-object v2, v3

    :goto_2
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "INCLUDE_PROFILE"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sip"

    iget-object v3, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/common/util/PhoneNumberHelper;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "enable_ltn_callerid_matching"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsWrapper;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v1

    const-string v2, "CallerInfoAsyncQuery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMatchLen= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v7, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtilsWrapper;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v7

    if-le v2, v1, :cond_1

    if-nez v7, :cond_1

    const-string v2, "content://com.android.contacts/phone_lookup_n_enterprise"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sip"

    iget-object v3, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/common/util/PhoneNumberHelper;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "INCLUDE_PROFILE"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_1
    new-instance v8, Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/incallui/CallerInfoAsyncQuery;-><init>()V

    invoke-direct {v8, p1, v3}, Lcom/android/incallui/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v5}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    iput-object p3, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v4

    :cond_2
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v4, v0}, Lcom/android/incallui/util/InCallUtilsWrapper;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_7

    const/4 v0, 0x4

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_4
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3, v6}, Lcom/android/incallui/CallerInfoAsyncQuery;->getTwoPhoneCallerInfoQueryProjection(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v4

    :goto_5
    iget-object v0, v8, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "tel"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsWrapper;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto/16 :goto_1

    :cond_6
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "phone_lookup_enterprise"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v6, v4

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto/16 :goto_4

    :cond_9
    invoke-static {v3}, Lcom/android/incallui/CallerInfoAsyncQuery;->getCallerInfoQueryProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_3
.end method

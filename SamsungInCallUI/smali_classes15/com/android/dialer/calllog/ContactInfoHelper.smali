.class public Lcom/android/dialer/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method

.method private createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    iput-object p2, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupKey:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iput-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    return-object v0
.end method

.method private static createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "vnd.android.cursor.item/phone_v2"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "data1"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data2"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "display_name"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "display_name_source"

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "encoded"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    const/16 v3, 0xb

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/16 v3, 0x8

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/16 v3, 0xf

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 9

    const-wide/16 v6, -0x1

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-nez v2, :cond_0

    cmp-long v2, p1, v6

    if-eqz v2, :cond_2

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sip"

    invoke-static {p0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    cmp-long v2, p1, v6

    if-eqz v2, :cond_1

    const-string v2, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v7

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v1, v3, :cond_2

    invoke-direct {p0, p1, v2, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    if-eqz v3, :cond_3

    move-object v1, v2

    :goto_2
    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canReportAsInvalid(ILjava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/service/CachedNumberLookupService;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBusiness(I)Z
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->isBusiness(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;
    .locals 10

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v6, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/dialer/calllog/PhoneQuery;->getPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v6, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v9, v8}, Lcom/android/dialer/calllog/ContactInfoHelper;->createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    iget-wide v4, v6, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    invoke-static {v0, v8, v4, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2, p2, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v4, :cond_5

    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    iput-object p1, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-direct {p0, p1, v3, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/dialer/calllog/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 9

    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_CALL_LOG"

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_b

    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget v4, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v5, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v4, v5, :cond_3

    const-string v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    :cond_3
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "normalized_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_6
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    iget-wide v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v6, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const-string v4, "photo_id"

    iget-wide v6, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    :cond_8
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p4, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "photo_uri"

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_9
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_a
    :goto_1
    if-eqz v1, :cond_0

    if-nez p2, :cond_d

    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "number = ? AND countryiso IS NULL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/dialer/calllog/ContactInfoHelper;->TAG:Ljava/lang/String;

    const-string v5, "Unable to update contact info in call log db"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_b
    const-string v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "normalized_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "photo_id"

    iget-wide v6, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "photo_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_d
    :try_start_1
    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "number = ? AND countryiso = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

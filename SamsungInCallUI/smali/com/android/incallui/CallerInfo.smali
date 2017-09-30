.class public Lcom/android/incallui/CallerInfo;
.super Ljava/lang/Object;


# static fields
.field private static final BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final ENTERPRISE_CONTACT_ID_BASE:J = 0x3b9aca00L

.field private static final KNOX_CONTACT_ID_OFFSET:J = 0x1dcd6500L

.field private static final SECUREFOLDER_CONTACT_ID_OFFSET:J = 0x29b92700L

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final USER_TYPE_CURRENT:J = 0x0L

.field public static final USER_TYPE_KNOX:J = 0x2L

.field public static final USER_TYPE_SECURE_FOLDER:J = 0x3L

.field public static final USER_TYPE_WORK:J = 0x1L

.field private static mIsVoiceMail:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public callMessage:Ljava/lang/String;

.field public callSubject:Ljava/lang/String;

.field public canViewContactDetails:Z

.field public cdnipNumber:Ljava/lang/String;

.field public cnapName:Ljava/lang/String;

.field public contactDataId:J

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdForTwophone:J

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field private displayNameSource:I

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public localTime:Ljava/lang/String;

.field public lookupKeyOrNull:Ljava/lang/String;

.field private mIsEmergency:Z

.field public name:Ljava/lang/String;

.field public nameAlternative:Ljava/lang/String;

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public originalNumber:Ljava/lang/String;

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public queryCompleted:Z

.field public queryNumber:Ljava/lang/String;

.field public queryUserID:I

.field public radNumber:Ljava/lang/String;

.field public rawId:J

.field public reuseCache:Z

.field public shouldSendToVoicemail:Z

.field public twophoneNumber:Ljava/lang/String;

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "normalized_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "normalized_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallerInfo;->BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    sput-boolean v1, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    iput-wide v2, p0, Lcom/android/incallui/CallerInfo;->userType:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->twophoneNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iput-wide v2, p0, Lcom/android/incallui/CallerInfo;->contactIdForTwophone:J

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->reuseCache:Z

    return-void
.end method

.method private static determineUserType(J)J
    .locals 12

    const-wide v10, 0x7fffffff80000000L

    const-wide/32 v8, 0x6553f100

    const-wide/32 v6, 0x59682f00

    const/4 v5, 0x1

    const-wide/16 v0, 0x0

    invoke-static {p0, p1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-long/2addr p0, v10

    const-string v2, "CallerInfo"

    const-string v3, "isProfileId"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/32 v2, 0x3b9aca00

    cmp-long v2, p0, v2

    if-ltz v2, :cond_2

    cmp-long v2, p0, v6

    if-gez v2, :cond_2

    const-wide/16 v0, 0x1

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    cmp-long v2, p0, v6

    if-ltz v2, :cond_3

    cmp-long v2, p0, v8

    if-gez v2, :cond_3

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_3
    cmp-long v2, p0, v8

    if-ltz v2, :cond_1

    cmp-long v2, p0, v10

    if-gez v2, :cond_1

    const-wide/16 v0, 0x3

    goto :goto_0
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 3

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "phone_lookup_enterprise"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "INCLUDE_PROFILE"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method static doTwoPhoneLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;
    .locals 9

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "phone_lookup_with_profile"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/wrapper/ContentProviderWrapper;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "INCLUDE_PROFILE"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sip"

    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-static {p0, p3}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_0

    iput v0, p2, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iget-wide v2, p2, Lcom/android/incallui/CallerInfo;->contactDataId:J

    iget-wide v4, p2, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget v6, p2, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iget-wide v7, p2, Lcom/android/incallui/CallerInfo;->userType:J

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/incallui/CallerInfo;->getRawContactId(Landroid/content/Context;JJIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/incallui/CallerInfo;->rawId:J

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previousResult.queryUserID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/incallui/CallerInfo;->queryUserID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    return-object p2

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getTwoPhoneUserId(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "phone_lookup_enterprise"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {p0, v1}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/incallui/CallerInfo;->canViewContactDetails:Z

    goto :goto_3
.end method

.method private static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    if-eqz p3, :cond_e

    :goto_0
    iput v9, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput v9, p3, Lcom/android/incallui/CallerInfo;->numberType:I

    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-boolean v9, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v9, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    iput-wide v4, p3, Lcom/android/incallui/CallerInfo;->userType:J

    iput-boolean v9, p3, Lcom/android/incallui/CallerInfo;->canViewContactDetails:Z

    iput v9, p3, Lcom/android/incallui/CallerInfo;->displayNameSource:I

    iput-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdForTwophone:J

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v0, v0, v1

    const-string v1, "content://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    :try_start_1
    const-string v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> query user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on cursor..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "display_name_source"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p3, Lcom/android/incallui/CallerInfo;->displayNameSource:I

    :cond_0
    const-string v1, "display_name"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    :cond_1
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/incallui/util/NameNumberUtils;->isKorIsoWithNationalNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    :cond_2
    const-string v1, "number"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_3
    const-string v1, "normalized_number"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    :cond_4
    const-string v1, "label"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_5

    const-string v2, "type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/incallui/CallerInfo;->numberType:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p3, Lcom/android/incallui/CallerInfo;->numberType:I

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    :cond_5
    const-string v1, "is_sim"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_6

    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    :cond_6
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_f

    move v1, v9

    :goto_3
    invoke-static {p1, p2, v1}, Lcom/android/incallui/CallerInfo;->getColumnIndexForTwoPhonePersonId(Landroid/net/Uri;Landroid/database/Cursor;I)I

    move-result v1

    invoke-static {p1, p2, v0}, Lcom/android/incallui/CallerInfo;->getColumnIndexForTwoPhonePersonId(Landroid/net/Uri;Landroid/database/Cursor;I)I

    move-result v2

    if-eq v2, v7, :cond_7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdForTwophone:J

    :cond_7
    :goto_4
    if-eq v1, v7, :cond_11

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v1

    if-nez v1, :cond_8

    iput-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-string v1, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> got info.contactIdOrZero: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lookup"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    :cond_8
    :goto_5
    const-string v1, "data_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactDataId:J

    :cond_9
    const-string v1, "photo_uri"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_12

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    :goto_6
    const-string v1, "custom_ringtone"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    :goto_7
    const-string v1, "send_to_voicemail"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_15

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_15

    move v1, v6

    :goto_8
    iput-boolean v1, p3, Lcom/android/incallui/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v6, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-static {v2, v3}, Lcom/android/incallui/CallerInfo;->determineUserType(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/incallui/CallerInfo;->userType:J

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->userType:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/dialer/calllog/a;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->nameAlternative:Ljava/lang/String;

    :cond_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v8, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    :cond_c
    iput v0, p3, Lcom/android/incallui/CallerInfo;->queryUserID:I

    :cond_d
    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactDataId:J

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget v6, p3, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iget-wide v7, p3, Lcom/android/incallui/CallerInfo;->userType:J

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/incallui/CallerInfo;->getRawContactId(Landroid/content/Context;JJIJ)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/incallui/CallerInfo;->rawId:J

    iput-boolean v9, p3, Lcom/android/incallui/CallerInfo;->needUpdate:Z

    iget-object v0, p3, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iput-object p1, p3, Lcom/android/incallui/CallerInfo;->contactRefUri:Landroid/net/Uri;

    return-object p3

    :cond_e
    new-instance p3, Lcom/android/incallui/CallerInfo;

    invoke-direct {p3}, Lcom/android/incallui/CallerInfo;-><init>()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v9

    :goto_9
    const-string v1, "CallerInfo"

    const-string v2, "Exception : get user id"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getTwoPhoneUserId(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_3

    :cond_10
    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v1

    goto/16 :goto_4

    :cond_11
    const-string v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find contactId column for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v4

    goto/16 :goto_5

    :cond_12
    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto/16 :goto_6

    :cond_13
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p3, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_7

    :cond_14
    iput-object v8, p3, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_7

    :cond_15
    move v1, v9

    goto/16 :goto_8

    :catch_1
    move-exception v1

    goto :goto_9

    :cond_16
    move v0, v9

    goto/16 :goto_1
.end method

.method private static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 5

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "content://com.android.contacts/data/phones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CallerInfo"

    const-string v1, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Using column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' (columnIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") for person_id lookup..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "content://com.android.contacts/data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "CallerInfo"

    const-string v1, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v2, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CallerInfo"

    const-string v1, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/incallui/CallerInfo;->getContactIdColumnNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getColumnIndexForTwoPhonePersonId(Landroid/net/Uri;Landroid/database/Cursor;I)I
    .locals 5

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getColumnIndexForTwoPhonePersonId: contactRef URI = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'... userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CallerInfo"

    const-string v1, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Using column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' (columnIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") for person_id lookup..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "CallerInfo"

    const-string v1, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CallerInfo"

    const-string v1, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method public static getContactIdColumnNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact_id"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "contact_id"

    goto :goto_0

    :cond_1
    const-string v0, "_id"

    goto :goto_0
.end method

.method public static getDefaultPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/incallui/CallerInfo;->BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeoDescription(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/CallerInfo;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-static {}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0, v3}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->a(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v5, "CallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/incallui/CallerInfo;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for countryIso \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v4, "CallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- parsed number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/incallui/CallerInfo;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- got description: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    const-string v4, "CallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/incallui/CallerInfo;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private static getRawContactId(Landroid/content/Context;JJIJ)J
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getKnoxId(Landroid/content/Context;)I

    move-result v0

    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x2

    cmp-long v2, p6, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x3

    cmp-long v2, p6, v2

    if-eqz v2, :cond_5

    :goto_0
    const/4 v0, -0x1

    if-le p5, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@com.android.contacts/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "raw_contact_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    move-wide v0, v6

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    return-wide v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_3
    :try_start_2
    const-string v1, "CallerInfo"

    const-string v2, "getRawContactId Exception"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-wide v0, v6

    goto :goto_2

    :cond_4
    move-wide v0, v6

    goto :goto_1

    :cond_5
    move p5, v0

    goto/16 :goto_0
.end method

.method private static getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isVoiceMail()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "voicemail"

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "CallerInfo"

    const-string v2, "isVoiceMail"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;
    .locals 1

    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    const v0, 0x7f020132

    iput v0, p0, Lcom/android/incallui/CallerInfo;->photoResource:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    return-object p0
.end method

.method markAsVoiceMail(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    :try_start_0
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/incallui/CallerInfo;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/CallerInfo;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CallerInfo"

    const-string v2, "Cannot access VoiceMail."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", phoneNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "non-null"

    goto :goto_0

    :cond_1
    const-string v0, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateLocalTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/LocationTimeUtils;->getLocalTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->localTime:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

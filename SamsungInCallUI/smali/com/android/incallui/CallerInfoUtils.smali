.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field public static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static buildCachedContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 4

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/incallui/CallerInfo;->numberType:I

    iput v1, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/incallui/CallerInfo;->userType:J

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    invoke-interface {p0, v0}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/android/incallui/CallerInfo;

    invoke-direct {v2}, Lcom/android/incallui/CallerInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/whitepages/nameid/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "callprotect_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/whitepages/nameid/f;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whitepages/nameid/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    const-string v3, "cnap_supplementary_service"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_b

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v0

    iput v0, v2, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    const-string v0, "ims_support_photo_ring"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "<PhotoRing>"

    iget-object v3, v2, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    :cond_3
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getRadNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    :cond_4
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->cdnipNumber:Ljava/lang/String;

    :cond_5
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTwoPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->twophoneNumber:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/android/incallui/CallerInfo;->canViewContactDetails:Z

    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.twophoneNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/CallerInfo;->twophoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget v1, v2, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-static {p0, v2, v0, v1}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "voicemail"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v2, p0, v0}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;

    :cond_a
    return-object v2

    :cond_b
    iget-object v0, v2, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-static {v1, p0, v0, p2, p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v2, v0, Lcom/android/incallui/CallerInfo;->queryCompleted:Z

    goto :goto_0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/dialer/b/a;->a(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ci "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p3, v3, :cond_2

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput v4, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    :cond_2
    iget v0, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v0, p3, :cond_5

    if-ne p3, v3, :cond_5

    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const v0, 0x7f090280

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    :goto_2
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialCnap: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; presentation now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v0

    :cond_5
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v0

    const-string v1, "private_num"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput v4, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    goto :goto_2

    :cond_8
    move-object v0, p2

    goto :goto_2
.end method

.method public static sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/incallui/CallerInfoUtils$1;

    invoke-direct {v2}, Lcom/android/incallui/CallerInfoUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->startLoading()V

    return-void
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateGeoDescriptionAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateGeoDescriptionAsync: return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/incallui/CallerInfoUtils$2;

    invoke-direct {v0}, Lcom/android/incallui/CallerInfoUtils$2;-><init>()V

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGeoDescriptionAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

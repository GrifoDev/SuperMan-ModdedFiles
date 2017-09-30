.class public Lcom/android/incallui/util/SecCallExtraUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/SecCallExtraUtils$Domain;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SecCallExtraUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssisted(Lcom/android/incallui/Call;)I
    .locals 1

    const-string v0, "Assisted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SecCallExtraUtils"

    const-string v2, "getBooleanValue telecomCall "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SecCallExtraUtils"

    const-string v2, "getBooleanValue call "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCVOStatus(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "CVOStatus"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectionCallId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstCallerForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "FirstCallerForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForwardingNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "ForwardingNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForwardingPresentation(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "ForwardingPresentation"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGetAliveParticipantNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "GetAliveParticipantNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHDIcon(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "HDIcon"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasBeenVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "HasBeenVideoCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIMSConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IMSConferenceCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIMSConferenceCallParticipantNumber(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceCallParticipantNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantCount(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "IMSConferenceParticipantCount"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantCreateTime(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantCreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantDuration(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantDuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantLookupKey(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantLookupKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantName(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantPhotoUri(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantPhotoUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantStartDuration(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantStartDuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantState(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "IMSConferenceParticipantState"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantState(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSConferenceParticipantState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceStateChanged(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IMSConferenceStateChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    const-string v0, "SecCallExtraUtils"

    const-string v1, "NumberFormatException"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    const-string v0, "SecCallExtraUtils"

    const-string v1, "NumberFormatException"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIntValue(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "SecCallExtraUtils"

    const-string v1, "NumberFormatException"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsConfParticipant(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsConfParticipant"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsDialToKoreaForRAD(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsDialToKoreaForRAD"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsEpdgCall(Landroid/telecom/Call;)Z
    .locals 1

    const-string v0, "IsEpdgCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsEpdgCall(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsEpdgCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsOneSimMultiNumber(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsOneSimMultiNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRadNumberConverted(Landroid/telecom/Call;)Z
    .locals 1

    const-string v0, "IsRadNumberConverted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRadNumberConverted(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsRadNumberConverted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRedialCall(Landroid/telecom/Call;)Z
    .locals 1

    const-string v0, "IsRedialCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsTwoPhoneMode(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsTwoPhoneMode"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVirtualLine(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsVirtualLine"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVoicePartyCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "IsVoicePartyCall"

    invoke-static {p0, v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getIsVolteConference(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "IsVolteConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVolteGroupCall(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "IsVolteGroupCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineCtrl(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "LineCtrl"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "LineMSISDN"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "NameForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "NumberForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutgoingCallMessage(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "OutgoingCallMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutgoingFromDialer(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "OutgoingDialerAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getRadOriginalNumber(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "RadOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRadOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "RadOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceivedCall(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "ReceivedCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSecCallExtra(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "SecCallExtra"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SecCallExtraUtils"

    const-string v2, "IllegalArgumentException getSecCallExtra ,"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SecCallExtraUtils"

    const-string v1, "getSecCallExtra: extras is null, so get intent extras..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecCallExtra(Lcom/android/incallui/Call;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionId(Landroid/telecom/Call;)I
    .locals 2

    const-string v0, "SessionId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSessionId(Lcom/android/incallui/Call;)I
    .locals 2

    const-string v0, "SessionId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedDevice(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "SharedDevice"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimReceiveId(Lcom/android/incallui/Call;)I
    .locals 2

    const-string v0, "SimReceiveSlot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStartPopupServiceWhenMakeCallFromOtherApp(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "StartPopupServiceWhenMakeCallFromOtherApp"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v1, "SecCallExtraUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "SecCallExtraUtils"

    const-string v2, "secCallExtra is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "SecCallExtraUtils"

    const-string v2, "telecomCall is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v1, "SecCallExtraUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "SecCallExtraUtils"

    const-string v1, "secCallExtra is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, p2

    goto :goto_0

    :cond_1
    const-string v0, "SecCallExtraUtils"

    const-string v1, "call is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getStringValue(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v1, "SecCallExtraUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "SecCallExtraUtils"

    const-string v2, "secCallExtra is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSubNumberId(Lcom/android/incallui/Call;)I
    .locals 1

    const-string v0, "SubNumberId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "TelecomCallId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTouchPoint(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "TouchPoint"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTtyType(Lcom/android/incallui/Call;)I
    .locals 1

    const-string v0, "TtyType"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTtyType(Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "TtyType"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTwoPhoneOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "TwoPhoneOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "Type"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateEmergencyCallstate(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "UpdateEmergencyCallstate"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getisDowngradeCall(Lcom/android/incallui/Call;)Z
    .locals 1

    const-string v0, "isDowngradeCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static wasVTSpeakerOn(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "VTSpeakerState"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

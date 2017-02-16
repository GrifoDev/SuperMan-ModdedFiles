.class public Lcom/android/incallui/util/SecCallExtraUtils;
.super Ljava/lang/Object;
.source "SecCallExtraUtils.java"


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

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method public static getAssisted(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 31
    const-string v0, "Assisted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z
    .locals 4
    .param p0, "telecomCall"    # Landroid/telecom/Call;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 326
    :goto_0
    return v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "getBooleanValue telecomCall "

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 314
    :goto_0
    return v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "getBooleanValue call "

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getBooleanValue(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 338
    :goto_0
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "getBooleanValue secCallExtra "

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCVOStatus(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 59
    const-string v0, "CVOStatus"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 55
    const-string v0, "ConnectionCallId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstCallerForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 63
    const-string v0, "FirstCallerForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForwardingNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 67
    const-string v0, "ForwardingNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForwardingPresentation(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 71
    const-string v0, "ForwardingPresentation"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGetAliveParticipantNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 75
    const-string v0, "GetAliveParticipantNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHDIcon(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 79
    const-string v0, "HDIcon"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasBeenVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 179
    const-string v0, "HasBeenVideoCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIMSConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 187
    const-string v0, "IMSConferenceCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIMSConferenceCallParticipantNumber(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 99
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 83
    const-string v0, "IMSConferenceParticipantCount"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantCreateTime(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 111
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
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 119
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
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 107
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
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 87
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
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 103
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
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 115
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 91
    const-string v0, "IMSConferenceParticipantState"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSConferenceParticipantState(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # I

    .prologue
    .line 95
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 191
    const-string v0, "IMSConferenceStateChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I
    .locals 4
    .param p0, "telecomCall"    # Landroid/telecom/Call;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 290
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 286
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 278
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 274
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIntValue(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
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

    .prologue
    .line 294
    .local p0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 302
    :goto_0
    return v2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecCallExtraUtils"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIsConfParticipant(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 195
    const-string v0, "IsConfParticipant"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsDialToKoreaForRAD(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 199
    const-string v0, "IsDialToKoreaForRAD"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsEpdgCall(Landroid/telecom/Call;)Z
    .locals 1
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 211
    const-string v0, "IsEpdgCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsEpdgCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 207
    const-string v0, "IsEpdgCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsOneSimMultiNumber(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 215
    const-string v0, "IsOneSimMultiNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRadNumberConverted(Landroid/telecom/Call;)Z
    .locals 1
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 223
    const-string v0, "IsRadNumberConverted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRadNumberConverted(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 219
    const-string v0, "IsRadNumberConverted"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsRedialCall(Landroid/telecom/Call;)Z
    .locals 1
    .param p0, "call"    # Landroid/telecom/Call;

    .prologue
    .line 417
    const-string v0, "IsRedialCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsSpam(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 227
    const-string v0, "IsSpam"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsTwoPhoneMode(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 231
    const-string v0, "IsTwoPhoneMode"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVirtualLine(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 131
    const-string v0, "IsVirtualLine"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVoicePartyCall(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    const-string v3, "IsVoicePartyCall"

    invoke-static {p0, v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 238
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 242
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 238
    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    :cond_1
    move v1, v2

    .line 242
    goto :goto_0
.end method

.method public static getIsVolteConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 246
    const-string v0, "IsVolteConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIsVolteGroupCall(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 123
    const-string v0, "IsVolteGroupCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineCtrl(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 183
    const-string v0, "LineCtrl"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 127
    const-string v0, "LineMSISDN"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 135
    const-string v0, "NameForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 139
    const-string v0, "NumberForIMSConference"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutgoingCallMessage(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 143
    const-string v0, "OutgoingCallMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutgoingFromDialer(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 258
    const-string v0, "OutgoingDialerAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getRadOriginalNumber(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 151
    const-string v0, "RadOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRadOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 147
    const-string v0, "RadOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceivedCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 250
    const-string v0, "ReceivedCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;
    .locals 5
    .param p0, "telecomCall"    # Landroid/telecom/Call;
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

    .prologue
    .line 397
    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 399
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 400
    const-string v3, "SecCallExtraUtils"

    const-string v4, "getSecCallExtra: extras is null, so get intent extras..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 403
    :cond_0
    if-eqz v0, :cond_1

    .line 405
    :try_start_0
    const-string v3, "SecCallExtra"

    .line 406
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 408
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SecCallExtraUtils"

    const-string v4, "IllegalArgumentException getSecCallExtra ,"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 413
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSecCallExtra(Lcom/android/incallui/Call;)Ljava/util/HashMap;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
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

    .prologue
    .line 389
    if-eqz p0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    .line 391
    .local v0, "telecomCall":Landroid/telecom/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v1

    .line 393
    .end local v0    # "telecomCall":Landroid/telecom/Call;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSessionId(Landroid/telecom/Call;)I
    .locals 2
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 429
    const-string v0, "SessionId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSessionId(Lcom/android/incallui/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 425
    const-string v0, "SessionId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedDevice(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 155
    const-string v0, "SharedDevice"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimReceiveId(Lcom/android/incallui/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 433
    const-string v0, "SimReceiveSlot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSpamCount(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 39
    const-string v0, "SpamCount"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSpamNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 159
    const-string v0, "SpamNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpamTagName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 163
    const-string v0, "SpamTagName"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpamTagType(Lcom/android/incallui/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 43
    const-string v0, "SpamTagType"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStartPopupServiceWhenMakeCallFromOtherApp(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 254
    const-string v0, "StartPopupServiceWhenMakeCallFromOtherApp"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getStringValue(Landroid/telecom/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "telecomCall"    # Landroid/telecom/Call;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "value":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 364
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v0

    .line 365
    .local v0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 373
    .end local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    const-string v2, "SecCallExtraUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object v1

    .line 368
    .restart local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "SecCallExtraUtils"

    const-string v3, "secCallExtra is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "SecCallExtraUtils"

    const-string v3, "telecomCall is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 346
    move-object v1, p2

    .line 347
    .local v1, "value":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 348
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Ljava/util/HashMap;

    move-result-object v0

    .line 349
    .local v0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 357
    .end local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    const-string v2, "SecCallExtraUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-object v1

    .line 352
    .restart local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "SecCallExtraUtils"

    const-string v3, "secCallExtra is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v0    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "SecCallExtraUtils"

    const-string v3, "call is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStringValue(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
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

    .prologue
    .line 378
    .local p0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 384
    .restart local v0    # "value":Ljava/lang/String;
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

    .line 385
    return-object v0

    .line 382
    :cond_0
    const-string v1, "SecCallExtraUtils"

    const-string v2, "secCallExtra is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSubNumberId(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 35
    const-string v0, "SubNumberId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Lcom/android/incallui/Call;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 421
    const-string v0, "TelecomCallId"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTouchPoint(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 167
    const-string v0, "TouchPoint"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTtyType(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 47
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

    .prologue
    .line 51
    .local p0, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TtyType"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTwoPhoneOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 171
    const-string v0, "TwoPhoneOriginalNumber"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 175
    const-string v0, "Type"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStringValue(Lcom/android/incallui/Call;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateEmergencyCallstate(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 262
    const-string v0, "UpdateEmergencyCallstate"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getisDowngradeCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 203
    const-string v0, "isDowngradeCall"

    invoke-static {p0, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Lcom/android/incallui/Call;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

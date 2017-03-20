.class public final Lcom/android/incallui/SecCall;
.super Ljava/lang/Object;
.source "SecCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecCall$IMSConferenceParticipantState;,
        Lcom/android/incallui/SecCall$VideoResolution;,
        Lcom/android/incallui/SecCall$ModifyType;,
        Lcom/android/incallui/SecCall$Type;
    }
.end annotation


# static fields
.field public static final ACTION_HD_VOICE_CALL:Ljava/lang/String; = "com.android.phone.ACTION_HD_VOICE_CALL"

.field public static final EXTRA_HD_VOICE_CALL:Ljava/lang/String; = "HD_STATUS"


# instance fields
.field public domain:I

.field private mAddress:Ljava/lang/String;

.field private mAddressChanged:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mCallCapabilities:I

.field private mCallId:Ljava/lang/String;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCdnipNumber:Ljava/lang/String;

.field private mConferencedRx:Z

.field private mHDIcon:I

.field private mIsChangedToTwoWayVideo:Z

.field private mIsEarlyMedia:Z

.field private mModifyReceiveType:I

.field private mModifyRequestType:I

.field private mModifyType:I

.field private mNeedToShowDataDialog:Z

.field private mSecCallExtra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecVideoState:I

.field private mShowGraySurface:Z

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v4, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    .line 45
    iput v1, p0, Lcom/android/incallui/SecCall;->mType:I

    .line 46
    sget v0, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v0, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    .line 47
    iput v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    .line 48
    iput v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    .line 50
    iput v1, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    .line 51
    iput-object v4, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    .line 53
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    .line 57
    iput v1, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    .line 58
    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    .line 63
    iput v3, p0, Lcom/android/incallui/SecCall;->domain:I

    .line 66
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setAddress(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    .line 69
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCall;->mCallId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private checkForConferencedRx(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 94
    const-string v0, "CONFERENCED - child call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 95
    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "CONFERENCED - parent call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 99
    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 102
    const-string v0, "IsVolteConference"

    invoke-static {p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "CONFERENCED - participant call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 104
    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    .line 106
    :cond_4
    const-string v0, "IMSConferenceCall"

    invoke-static {p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "CONFERENCED - ims conference call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 108
    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0
.end method

.method private updateFromTelecommCall(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCall;->checkForConferencedRx(Landroid/telecom/Call;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCall;->updateEarlyMedia(Landroid/telecom/Call;)V

    .line 88
    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressChanged()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mAddressChanged:Z

    return v0
.end method

.method public getCallCapabilities()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFakeSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "FakeSalesCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCall()Z
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "FakeSmartCall"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFakeSmartCallFeature()Z
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "SmartCallFeature"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFakeSmartCallSetting()Z
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 234
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "SmartCallSetting"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFakeSmartCallSpamAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamAddress"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCallSpamAddressState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 282
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamAddressState"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCallSpamLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamLevel"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCallSpamName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCallSpamPhotoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamPhotoUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeSmartCalllSpamDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 258
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SmartCallSpamDescription"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFakeVideoCall()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "FakeVideoCall"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHDIcon()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    return v0
.end method

.method public getModifyType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    return v0
.end method

.method public getSecCallExtra()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSecVideoState()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    return v0
.end method

.method public getSessionId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "SessionId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "SessionId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoResolution()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 172
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v1, v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "VideoResolution"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v1, "VideoResolution"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/incallui/SecCall;->mType:I

    return v0
.end method

.method public isChangedToTwoWayVideo()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    return v0
.end method

.method public isConferecedVideoRx()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    return v0
.end method

.method public isEarlyMedia()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    return v0
.end method

.method public isHeldVideoStateChanged(I)Z
    .locals 3
    .param p1, "videoPauseState"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    .line 407
    .local v0, "oldSecVideoState":I
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedRx(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/SecVideoState;->add(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    .line 414
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 410
    :cond_1
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/SecVideoState;->remove(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    goto :goto_0

    .line 414
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isHoldedByTheOtherParty()Z
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "IsHoldedByTheOtherParty"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPausedVideo()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedRx(I)Z

    move-result v0

    return v0
.end method

.method public isShowGraySurface()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    return v0
.end method

.method public needToShowDataDialog()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/incallui/SecCall;->mAddress:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setAddressChanged(Z)V
    .locals 0
    .param p1, "addressChanged"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mAddressChanged:Z

    .line 457
    return-void
.end method

.method public setCallCapabilities(I)V
    .locals 0
    .param p1, "callCapabilities"    # I

    .prologue
    .line 464
    iput p1, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    .line 465
    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "callerDisplayName"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    .line 308
    :cond_0
    return-void
.end method

.method public setChangedToTwoWayVideo(Z)V
    .locals 0
    .param p1, "isChanged"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    .line 479
    return-void
.end method

.method public setDataDialogAsShown()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    .line 495
    return-void
.end method

.method public setHDIcon(I)V
    .locals 4
    .param p1, "hdIcon"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getHDIcon()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 290
    iput p1, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_HD_VOICE_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "HDVoiceIntent":Landroid/content/Intent;
    const-string v3, "HD_STATUS"

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getHDIcon()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 296
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    .end local v0    # "HDVoiceIntent":Landroid/content/Intent;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-void

    .line 293
    .restart local v0    # "HDVoiceIntent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setIncomingModifyCalltype(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    .line 194
    return-void
.end method

.method public setIsEarlyMedia(Z)V
    .locals 2
    .param p1, "isEarlyMedia"    # Z

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set IsEarlyMedia = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 499
    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    .line 500
    return-void
.end method

.method public setModifyType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    .line 186
    return-void
.end method

.method public setRequestModifyCalltype(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    .line 190
    return-void
.end method

.method public setSecCallExtra(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method public setSecVideoState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 321
    .local v0, "callState":I
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    .line 323
    .local v1, "newVideoState":I
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    .line 325
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 326
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    or-int/2addr v1, v2

    .line 328
    :cond_0
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 329
    :cond_1
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    or-int/2addr v1, v2

    .line 331
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    .line 332
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCall;->setChangedToTwoWayVideo(Z)V

    .line 344
    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v2, v3, :cond_4

    .line 345
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    if-ne v2, v3, :cond_e

    .line 346
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    or-int/2addr v1, v2

    .line 347
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 348
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestingVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 349
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    .line 382
    :cond_4
    :goto_1
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eq v1, v2, :cond_7

    .line 383
    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    .line 384
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    or-int/2addr v1, v2

    .line 386
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->isHoldedByTheOtherParty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 387
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v1, v2

    .line 389
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->isPausedVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v1, v2

    .line 393
    :cond_7
    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    .line 394
    return-void

    .line 333
    :cond_8
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 334
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    goto :goto_0

    .line 335
    :cond_9
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 336
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    goto :goto_0

    .line 338
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v2

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-ne v2, v3, :cond_3

    .line 339
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v2, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    .line 340
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    goto :goto_0

    .line 350
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestingVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    .line 354
    :cond_c
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 355
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    .line 356
    :cond_d
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    .line 360
    :cond_e
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    if-ne v2, v3, :cond_12

    .line 361
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    or-int/2addr v1, v2

    .line 362
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 363
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 364
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    .line 365
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    .line 369
    :cond_10
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 370
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    .line 371
    :cond_11
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    .line 375
    :cond_12
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v2, v3, :cond_4

    .line 376
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 377
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    or-int/2addr v1, v2

    .line 378
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    or-int/2addr v1, v2

    goto/16 :goto_1
.end method

.method public setType()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 130
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    if-nez v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mType:I

    .line 132
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 133
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 135
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    .line 137
    :cond_2
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-eq v1, v2, :cond_0

    .line 138
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v1, v2, :cond_0

    .line 139
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "type":I
    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 149
    :cond_4
    if-ne v0, v3, :cond_5

    .line 150
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    .line 152
    :cond_5
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    .line 155
    :cond_6
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-eq v1, v2, :cond_7

    .line 156
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v1, v2, :cond_7

    .line 157
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    .line 160
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mType:I

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    const-string v1, "Domain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecCall;->domain:I

    .line 82
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCall;->updateFromTelecommCall(Landroid/telecom/Call;)V

    .line 83
    return-void
.end method

.method public updateEarlyMedia(Landroid/telecom/Call;)V
    .locals 4
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 419
    .local v0, "callExtras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 420
    const-string v2, "callExtras = null"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v2, "videoCRBT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const-string v2, "videoCRBT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "videoCRBT":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCall;->setIsEarlyMedia(Z)V

    goto :goto_0

    .line 429
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCall;->setIsEarlyMedia(Z)V

    goto :goto_0
.end method

.method public updateFromSecCallExtra(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getFakeVideoCall()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCall;->setSecCallExtra(Ljava/util/HashMap;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->setType()V

    .line 121
    const-string v0, "CdnipNumber"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setCdnipNumber(Ljava/lang/String;)V

    .line 122
    const-string v0, "HDIcon"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "HDIcon"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setHDIcon(I)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->setSecVideoState()V

    .line 127
    :cond_1
    return-void
.end method

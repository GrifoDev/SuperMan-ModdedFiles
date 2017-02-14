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

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/incallui/SecCall;->mType:I

    sget v0, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v0, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    iput v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    iput v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    iput-object v4, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    iput v3, p0, Lcom/android/incallui/SecCall;->domain:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setAddress(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCall;->mCallId:Ljava/lang/String;

    return-void
.end method

.method private checkForConferencedRx(Landroid/telecom/Call;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const-string v0, "CONFERENCED - child call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CONFERENCED - parent call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "IsVolteConference"

    invoke-static {p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CONFERENCED - participant call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    :cond_4
    const-string v0, "IMSConferenceCall"

    invoke-static {p1, v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getBooleanValue(Landroid/telecom/Call;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CONFERENCED - ims conference call"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    goto :goto_0
.end method

.method private updateFromTelecommCall(Landroid/telecom/Call;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCall;->checkForConferencedRx(Landroid/telecom/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCall;->updateEarlyMedia(Landroid/telecom/Call;)V

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mAddressChanged:Z

    return v0
.end method

.method public getCallCapabilities()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFakeSalesCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "mSecCallExtra = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget v0, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    return v0
.end method

.method public getModifyType()I
    .locals 1

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSecVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    return v0
.end method

.method public getSessionId()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "SessionId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

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

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "VideoResolution"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

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

    iget v0, p0, Lcom/android/incallui/SecCall;->mType:I

    return v0
.end method

.method public isChangedToTwoWayVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    return v0
.end method

.method public isConferecedVideoRx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mConferencedRx:Z

    return v0
.end method

.method public isEarlyMedia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    return v0
.end method

.method public isHeldVideoStateChanged(I)Z
    .locals 3

    iget v0, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedRx(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/SecVideoState;->add(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/SecVideoState;->remove(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isHoldedByTheOtherParty()Z
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedRx(I)Z

    move-result v0

    return v0
.end method

.method public isShowGraySurface()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    return v0
.end method

.method public needToShowDataDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCall;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAddressChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mAddressChanged:Z

    return-void
.end method

.method public setCallCapabilities(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecCall;->mCallCapabilities:I

    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/SecCall;->mCdnipNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setChangedToTwoWayVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mIsChangedToTwoWayVideo:Z

    return-void
.end method

.method public setDataDialogAsShown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecCall;->mNeedToShowDataDialog:Z

    return-void
.end method

.method public setHDIcon(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getHDIcon()I

    move-result v2

    if-eq p1, v2, :cond_0

    iput p1, p0, Lcom/android/incallui/SecCall;->mHDIcon:I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_HD_VOICE_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "HD_STATUS"

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getHDIcon()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setIncomingModifyCalltype(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    return-void
.end method

.method public setIsEarlyMedia(Z)V
    .locals 2

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

    iput-boolean p1, p0, Lcom/android/incallui/SecCall;->mIsEarlyMedia:Z

    return-void
.end method

.method public setModifyType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    return-void
.end method

.method public setRequestModifyCalltype(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

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

    iput-object p1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    return-void
.end method

.method public setSecVideoState()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    or-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    or-int/2addr v1, v2

    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCall;->setChangedToTwoWayVideo(Z)V

    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    if-ne v2, v3, :cond_e

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestingVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    :cond_4
    :goto_1
    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    or-int/2addr v1, v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->isHoldedByTheOtherParty()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->isPausedVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v1, v2

    :cond_7
    iput v1, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    return-void

    :cond_8
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v2

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-ne v2, v3, :cond_3

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v2, p0, Lcom/android/incallui/SecCall;->mSecVideoState:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/SecCall;->mShowGraySurface:Z

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestingVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_c
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_d
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyRequestType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_e
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    if-ne v2, v3, :cond_12

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_10
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_11
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyReceiveType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_12
    iget v2, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/incallui/SecCall;->mType:I

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    or-int/2addr v1, v2

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    or-int/2addr v1, v2

    goto/16 :goto_1
.end method

.method public setType()V
    .locals 4

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/SecCall;->mType:I

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCall;->mSecCallExtra:Ljava/util/HashMap;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    :cond_4
    if-ne v0, v3, :cond_5

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    :cond_5
    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v1, v2, :cond_7

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    iput v1, p0, Lcom/android/incallui/SecCall;->mModifyType:I

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

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    const-string v1, "Domain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIntValue(Landroid/telecom/Call;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecCall;->domain:I

    iget-object v0, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCall;->updateFromTelecommCall(Landroid/telecom/Call;)V

    return-void
.end method

.method public updateEarlyMedia(Landroid/telecom/Call;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "callExtras = null"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "videoCRBT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "videoCRBT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCall;->setIsEarlyMedia(Z)V

    goto :goto_0

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

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->getFakeVideoCall()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCall;->setSecCallExtra(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->setType()V

    const-string v0, "CdnipNumber"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setCdnipNumber(Ljava/lang/String;)V

    const-string v0, "HDIcon"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "HDIcon"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCall;->setHDIcon(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCall;->setSecVideoState()V

    :cond_1
    return-void
.end method

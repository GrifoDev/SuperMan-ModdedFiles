.class public final Lcom/android/incallui/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallDetails$AspectRatio;
    }
.end annotation


# static fields
.field public static final EXTRA_AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field public static final EXTRA_CONFERENCE_PARTICIPANT:Ljava/lang/String; = "mtconference"

.field public static final EXTRA_CVO_ENABLE:Ljava/lang/String; = "cvoenable"

.field public static final EXTRA_HD_ICON:Ljava/lang/String; = "hdicon"

.field public static final EXTRA_OTHER_PARTY_ON_HOLD:Ljava/lang/String; = "IsHoldedByTheOtherParty"

.field public static final EXTRA_RADIO_TECH:Ljava/lang/String; = "radiotech"

.field public static final EXTRA_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final EXTRA_SEC_CALL_EXTRA:Ljava/lang/String; = "SecCallExtra"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final EXTRA_VIDEO_STATE:Ljava/lang/String; = "call_type"

.field public static final TAG:Ljava/lang/String; = "CallDetails"


# instance fields
.field private mAspectRatio:I

.field private mAudioCodec:Ljava/lang/String;

.field private mCVOEnabled:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mHDcon:Z

.field private mIsTheOtherPartyOnHold:Z

.field private mParticipated:Z

.field private mRadioTech:Ljava/lang/String;

.field private mVideoState:I

.field public videoPauseState:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    iput v0, p0, Lcom/android/incallui/CallDetails;->videoPauseState:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    .line 44
    iput v1, p0, Lcom/android/incallui/CallDetails;->mVideoState:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDcon:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    .line 55
    iput-object p1, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    .line 56
    return-void
.end method

.method private dump()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AspectRatio     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    invoke-static {v1}, Lcom/android/incallui/CallDetails$AspectRatio;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoState       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDIcon            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCodec     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioTech       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "CallDetails"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    return-void
.end method

.method private mapToAspectRatio(Ljava/lang/String;)I
    .locals 2
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x2

    .line 106
    .local v0, "ratio":I
    if-eqz p1, :cond_0

    .line 107
    const-string v1, "cif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string v1, "hd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vga"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    :cond_2
    const/4 v0, 0x2

    .line 111
    const-string v1, "land"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x3

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "720"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x4

    .line 116
    const-string v1, "land"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public isTheOtherPartyOnHold()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    return v0
.end method

.method public updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string v2, "resolution"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "resolution"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/CallDetails;->mapToAspectRatio(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    .line 62
    :cond_0
    const-string v2, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallDetails;->mVideoState:I

    .line 65
    :cond_1
    const-string v2, "call_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "call_type"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/CallDetails;->mVideoState:I

    .line 68
    :cond_2
    const-string v2, "hdicon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string v2, "true"

    const-string v3, "hdicon"

    const-string v4, "false"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallDetails;->mHDcon:Z

    .line 71
    :cond_3
    const-string v2, "audio_codec"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    const-string v2, "audio_codec"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    .line 74
    :cond_4
    const-string v2, "radiotech"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    const-string v2, "radiotech"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "radioTech":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 77
    iput-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    .line 81
    .end local v1    # "radioTech":Ljava/lang/String;
    :cond_5
    const-string v2, "mtconference"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    iget-boolean v2, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    if-nez v2, :cond_6

    .line 83
    const-string v2, "true"

    const-string v3, "mtconference"

    const-string v4, "false"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    .line 86
    :cond_6
    const-string v2, "cvoenable"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    const-string v2, "true"

    const-string v3, "cvoenable"

    const-string v4, "false"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    .local v0, "enabled":Z
    iget-boolean v2, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    if-eq v2, v0, :cond_7

    .line 89
    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    .line 93
    .end local v0    # "enabled":Z
    :cond_7
    const-string v2, "IsHoldedByTheOtherParty"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    const-string v2, "1"

    const-string v3, "IsHoldedByTheOtherParty"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    .line 98
    :cond_8
    return-void
.end method

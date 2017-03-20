.class public Lcom/android/incallui/util/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# static fields
.field public static final AMR_NB:I = 0x1

.field public static final AMR_WB:I = 0x2

.field public static final DISABLE_ADD_CALL_FOR_KNOX:I = 0x4

.field public static final DISABLE_BLUETOOTH_FOR_KNOX:I = 0x20

.field public static final DISABLE_ENDCALL_BUTTONS_FOR_KNOX:I = 0x80

.field public static final DISABLE_ENDCALL_CONTACTS_FOR_KNOX:I = 0x40

.field public static final DISABLE_EXTRA_VOLUME_FOR_KNOX:I = 0x2

.field public static final DISABLE_MENU_FOR_KNOX:I = 0x1

.field public static final DISABLE_MUTE_FOR_KNOX:I = 0x10

.field public static final DISABLE_SPEAKER_FOR_KNOX:I = 0x8

.field public static final EVS_SWB:I = 0x3

.field public static final HD_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "InCallUtils"

.field public static final NO_ICON:I = 0x0

.field public static final PLMN_TELKOMSEL_CODE_INDONESIA:Ljava/lang/String; = "51010"

.field private static final SYNCCALL_SETTING_PROVIDER:Ljava/lang/String; = "content://com.kddi.android.evc.SettingsProvider/system"

.field private static final SYNCCALL_SETTING_USE_INCOING_SHOW:Ljava/lang/String; = "setting_use_incoming_show_pu"

.field private static final SYNCCALL_SETTING_USE_SYNCCALL:Ljava/lang/String; = "setting_use_synccall"

.field public static final TWOPHONE_PREFIX:Ljava/lang/String; = "*77"

.field public static final VIDEO_TYPE:I = 0x3

.field public static final WIFI_TYPE:I = 0x2

.field private static sIsFullScreen:Z

.field private static sMakeMergeAfterAnswer:Z

.field private static sOldCallState:I

.field private static sPrevHQTShowState:Z

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    sput-boolean v1, Lcom/android/incallui/util/InCallUtils;->sIsFullScreen:Z

    .line 104
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    .line 106
    sput-boolean v1, Lcom/android/incallui/util/InCallUtils;->sPrevHQTShowState:Z

    .line 1181
    sput-boolean v1, Lcom/android/incallui/util/InCallUtils;->sMakeMergeAfterAnswer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckDisplayPLettrering()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1219
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1220
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1221
    .local v0, "bEnableLettering":Z
    if-nez v1, :cond_0

    .line 1242
    :goto_0
    return v4

    .line 1224
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oneline_greeting"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1226
    .local v2, "oneline":I
    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1227
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "photoring_reject_all"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1228
    .local v3, "photoringBlockAll":I
    const-string v5, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photoring reject all : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    const-string v4, "false"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    if-ne v3, v7, :cond_3

    .line 1230
    const/4 v0, 0x0

    .line 1241
    .end local v3    # "photoringBlockAll":I
    :cond_1
    :goto_2
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDisplayPLettrering, bEnableLettering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 1242
    goto :goto_0

    .line 1228
    .restart local v3    # "photoringBlockAll":I
    :cond_2
    const-string v4, "true"

    goto :goto_1

    .line 1231
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidBlockedNumber()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1232
    const/4 v0, 0x1

    goto :goto_2

    .line 1233
    .end local v3    # "photoringBlockAll":I
    :cond_4
    if-ne v2, v7, :cond_5

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1234
    const/4 v0, 0x1

    goto :goto_2

    .line 1235
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "feature_skt"

    .line 1236
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "feature_kor_open"

    .line 1237
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1238
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static IsTelkomSelIndonesiaOperator()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 401
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 402
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "51010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    const/4 v2, 0x1

    .line 410
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    const-string v3, "InCallUtils"

    const-string v4, "telephonyManager is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canAddCallForVoLTE()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1047
    const-string v3, "disable_add_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1049
    .local v1, "fgCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1050
    .local v0, "bgCall":Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v2

    .line 1054
    :cond_1
    const-string v3, "common_volte_hk"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1055
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1056
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1060
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canSupportHoldForVoLTE()Z
    .locals 1

    .prologue
    .line 1064
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canUpdateDetailsChanged(Landroid/telecom/Call;)Z
    .locals 8
    .param p0, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1667
    if-eqz p0, :cond_0

    .line 1668
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1669
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    .line 1670
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result v3

    .line 1671
    .local v3, "telecomCallState":I
    if-ne v3, v5, :cond_0

    .line 1673
    const-string v5, "InCallUtils"

    const-string v6, "canUpdateDetailsChanged - false : Invalid DISCONNECTING"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .end local v2    # "call":Lcom/android/incallui/Call;
    .end local v3    # "telecomCallState":I
    :goto_0
    return v4

    .line 1679
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    .line 1680
    .local v1, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1681
    const-string v5, "InCallUtils"

    const-string v6, "canUpdateDetailsChanged - false : isAnswerAnimationRunning"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1684
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1685
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1686
    const-string v5, "InCallUtils"

    const-string v6, "canUpdateDetailsChanged - false : isShrinkBackgroundRunning"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, v5

    .line 1689
    goto :goto_0
.end method

.method public static canUpgradeToVideo()Z
    .locals 7

    .prologue
    .line 2087
    const/4 v1, 0x1

    .line 2089
    .local v1, "can":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2090
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 2091
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 2093
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2095
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090046

    new-instance v6, Lcom/android/incallui/util/InCallUtils$1;

    invoke-direct {v6}, Lcom/android/incallui/util/InCallUtils$1;-><init>()V

    .line 2096
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2102
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2103
    .local v2, "mCannotChangeVideo":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2105
    const/4 v1, 0x0

    .line 2109
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v2    # "mCannotChangeVideo":Landroid/app/AlertDialog;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static checkAndMakeMergeAfterAnswer(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1193
    const-string v2, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer call.getState() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_1

    .line 1194
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sMakeMergeAfterAnswer : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/incallui/util/InCallUtils;->sMakeMergeAfterAnswer:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-static {v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1216
    :cond_0
    :goto_1
    return-void

    .line 1194
    :cond_1
    const-string v1, "null"

    goto :goto_0

    .line 1201
    :cond_2
    sget-boolean v1, Lcom/android/incallui/util/InCallUtils;->sMakeMergeAfterAnswer:Z

    if-eqz v1, :cond_0

    .line 1206
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1207
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    .line 1209
    .local v0, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer conferenceableCalls  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1213
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    goto :goto_1
.end method

.method public static checkAndNotifyDataUsageLimit()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2032
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2033
    .local v2, "mContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dataUsageReachToLimit"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2034
    .local v1, "dataLimit":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndNotifyDataUsageLimit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 2035
    if-ne v1, v4, :cond_1

    .line 2036
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 2037
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 2038
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertToast()V

    .line 2042
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static checkIMSCapability(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # I

    .prologue
    .line 1512
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1514
    .local v2, "call":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 1515
    .local v4, "capability":Z
    const/4 v3, 0x0

    .line 1516
    .local v3, "capabilities":Lcom/sec/ims/options/Capabilities;
    const/16 v1, 0x2000

    .line 1517
    .local v1, "FEATURE_MMTEL_VIDEO":I
    const/4 v0, 0x4

    .line 1520
    .local v0, "FEATURE_CHAT":I
    :try_start_0
    const-string v6, "ims_capability_check_on_call_end"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1521
    if-eqz v2, :cond_0

    .line 1522
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSCapabilities(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1526
    :cond_0
    if-eqz v3, :cond_1

    .line 1527
    sparse-switch p1, :sswitch_data_0

    .line 1554
    :cond_1
    :goto_0
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capability : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    return v4

    .line 1529
    :sswitch_0
    :try_start_1
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1530
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities has : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1532
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v8}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const/4 v4, 0x1

    goto :goto_0

    .line 1538
    :sswitch_1
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1539
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities has : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1541
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v8}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1542
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1550
    :catch_0
    move-exception v5

    .line 1551
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIMSCapability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1527
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 9
    .param p0, "fgCall"    # Lcom/android/incallui/Call;
    .param p1, "ringingCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 1584
    const/4 v4, 0x1

    .line 1585
    .local v4, "showMergeOption":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v4

    .line 1606
    .end local v4    # "showMergeOption":Z
    .local v5, "showMergeOption":I
    :goto_0
    return v5

    .line 1588
    .end local v5    # "showMergeOption":I
    .restart local v4    # "showMergeOption":Z
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "activeCallMsisdn":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 1590
    .local v3, "ringingCallMsisdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1591
    .local v1, "isNativeLineActiveCall":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1593
    .local v2, "isNativeLineRingingCall":Z
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 1594
    const/4 v4, 0x0

    .line 1605
    :cond_2
    :goto_1
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsShowMergeforJansky : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1606
    .restart local v5    # "showMergeOption":I
    goto :goto_0

    .line 1596
    .end local v5    # "showMergeOption":I
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 1597
    const/4 v4, 0x0

    goto :goto_1

    .line 1598
    :cond_4
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 1599
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1600
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1601
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 358
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "returnValue":Z
    const-string v1, "ctc_call_time_duration_for_six_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 301
    const-string v1, "InCallUtils"

    const-string v2, "displayCtcCallTimeDuration Six mode device and cdma call"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    .line 307
    :cond_0
    :goto_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCtcCallTimeDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return v0

    .line 304
    :cond_1
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static displayCtcSubscriberName()Z
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "returnValue":Z
    const-string v1, "ctc_call_time_duration_for_six_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 318
    :cond_0
    :goto_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCtcSubscriberName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v0

    .line 315
    :cond_1
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static displayToast(I)V
    .locals 2
    .param p0, "res"    # I

    .prologue
    .line 601
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 606
    return-void
.end method

.method public static displayToast(Ljava/lang/String;I)V
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "duration"    # I

    .prologue
    const/4 v7, 0x0

    .line 617
    sget-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    if-eqz v4, :cond_2

    .line 618
    sget-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v4, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :goto_0
    sget-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    .line 629
    const-string v4, "android.widget.Toast"

    invoke-static {v4}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 630
    .local v3, "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getWindowParams"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 631
    .local v2, "method":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 632
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 633
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 635
    :cond_0
    sget-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 637
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void

    .line 620
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 621
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 622
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    goto :goto_0

    .line 624
    :cond_3
    const-string v4, "InCallUtils"

    const-string v5, "Context is null"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 625
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/util/InCallUtils;->sToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public static displayToastLong(I)V
    .locals 2
    .param p0, "res"    # I

    .prologue
    .line 609
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 610
    return-void
.end method

.method public static displayToastLong(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 614
    return-void
.end method

.method public static getAssisted(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1575
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getAssisted(Lcom/android/incallui/Call;)I

    move-result v0

    return v0
.end method

.method public static getCallAudioCodec()I
    .locals 4

    .prologue
    .line 1007
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1008
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getCallAudioCodec(Lcom/android/incallui/Call;)I
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    .line 1012
    if-nez p0, :cond_0

    .line 1013
    const-string v2, "InCallUtils"

    const-string v3, "getCallAudioCodec call is null "

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    .line 1025
    :goto_0
    return v0

    .line 1017
    :cond_0
    const/4 v0, 0x1

    .line 1018
    .local v0, "audio_codec":I
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    const/4 v0, 0x2

    .line 1024
    :cond_1
    :goto_1
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallAudioCodec getId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / codeType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1020
    :cond_2
    const/high16 v2, 0x10000

    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getCallCardDialingString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 434
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f09001c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "dialingString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFakeRAD()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isDialToKoreaForRAD()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const v3, 0x7f0900cc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    :cond_1
    return-object v1
.end method

.method public static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;
    .param p1, "ignore"    # Lcom/android/incallui/Call;
    .param p2, "skipDisconnected"    # Z

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 129
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 147
    const-string v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 149
    if-nez p1, :cond_a

    .line 150
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 161
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_0

    .line 168
    :cond_6
    if-nez p2, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_0

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_8

    if-ne v0, p1, :cond_0

    .line 180
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_0

    .line 186
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 188
    goto :goto_0

    .line 154
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    goto :goto_0
.end method

.method public static getCallerSize(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1256
    const/4 v0, 0x0

    .line 1257
    .local v0, "count":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceCallCounts(Lcom/android/incallui/Call;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1258
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1259
    .local v2, "numbers":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1260
    const-string v3, "$"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1261
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1262
    .local v1, "mNumbers":[Ljava/lang/String;
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .end local v1    # "mNumbers":[Ljava/lang/String;
    .end local v2    # "numbers":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1265
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceCallCounts(Lcom/android/incallui/Call;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentUserId(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1452
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1453
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    .line 1454
    .local v1, "currentUserId":I
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1455
    return v1
.end method

.method public static getDelayTimeForDisconnect(Lcom/android/incallui/Call;I)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "delay"    # I

    .prologue
    .line 1976
    if-nez p0, :cond_0

    .line 1977
    const-string v1, "InCallUtils"

    const-string v2, " getDelayTimeForDisconnect call is empty"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 1988
    .end local p1    # "delay":I
    .local v0, "delay":I
    :goto_0
    return v0

    .line 1981
    .end local v0    # "delay":I
    .restart local p1    # "delay":I
    :cond_0
    const-string v1, "usa_cdma_emergency_concept"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1982
    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDelayForDisconnect(Lcom/android/incallui/Call;I)I

    move-result p1

    .line 1984
    :cond_1
    const-string v1, "multiend_point"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1985
    const/4 p1, 0x0

    .line 1987
    :cond_2
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getDelayTimeForDisconnect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 1988
    .end local p1    # "delay":I
    .restart local v0    # "delay":I
    goto :goto_0
.end method

.method public static getIconName(Ljava/lang/String;I)I
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "iconType"    # I

    .prologue
    const/4 v5, 0x1

    .line 736
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 738
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v1, "iconName":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_0
    const-string v2, "voicecall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    if-ne p1, v5, :cond_c

    .line 743
    const-string v2, "_hd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "display_uhd_voice_icon"

    .line 745
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHasEVSSWB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 747
    const-string v2, "_kor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_1
    :goto_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconName() iconName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 778
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 748
    :cond_2
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "feature_kor_open"

    .line 749
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isSKTSIM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 750
    :cond_3
    const-string v2, "_skt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 751
    :cond_4
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_kor_open"

    .line 752
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 753
    :cond_5
    const-string v2, "_lgt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 754
    :cond_6
    const-string v2, "feature_dcm"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 755
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHasAMRWB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 756
    const-string v2, "_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 757
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHasEVSSWB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 758
    const-string v2, "_dcm_plus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 760
    :cond_8
    const-string v2, "display_ufn_hd_voice_icon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 761
    const-string v2, "_ufn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 762
    :cond_9
    const-string v2, "spr_display_hd_icon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 763
    const-string v2, "_spr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 764
    :cond_a
    const-string v2, "support_chn_cu_hd_voice_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChnCuSIM()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 765
    const-string v2, "_cu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 767
    :cond_b
    const-string v2, "_common"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 769
    :cond_c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 770
    const-string v2, "_wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 772
    const-string v2, "_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 774
    :cond_d
    const-string v2, "_common"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static getIconType(Lcom/android/incallui/Call;)I
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "iconType":I
    const-string v4, "spr_display_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v2

    .line 809
    .local v1, "preferHDIcon":Z
    :goto_0
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 810
    const-string v4, "call_details_for_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 811
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isHDConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 815
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 816
    const/4 v0, 0x2

    .line 828
    :cond_1
    :goto_2
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconType() icon type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 829
    return v0

    .end local v1    # "preferHDIcon":Z
    :cond_2
    move v1, v3

    .line 807
    goto :goto_0

    .restart local v1    # "preferHDIcon":Z
    :cond_3
    move v0, v3

    .line 811
    goto :goto_1

    .line 813
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isCommonHDConfCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :goto_3
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_3

    .line 819
    :cond_6
    const-string v4, "call_details_for_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 820
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    .line 824
    :goto_4
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 825
    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    move v0, v3

    .line 820
    goto :goto_4

    .line 822
    :cond_8
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    :goto_5
    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5
.end method

.method public static getKnoxId(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 1459
    const/4 v2, -0x1

    .line 1460
    .local v2, "knoxUserId":I
    invoke-static {p0}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v4

    .line 1461
    .local v4, "userManager":Lcom/android/incallui/wrapper/UserManagerWrapper;
    invoke-virtual {v4, v9}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 1462
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/wrapper/UserInfoWrapper;>;"
    if-eqz v5, :cond_1

    .line 1463
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/wrapper/UserInfoWrapper;

    .line 1464
    .local v3, "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    if-eqz v3, :cond_0

    .line 1465
    invoke-virtual {v3}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isKnoxWorkspace()Z

    move-result v1

    .line 1466
    .local v1, "isKnoxMode":Z
    invoke-virtual {v3}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v0

    .line 1467
    .local v0, "id":I
    if-eqz v1, :cond_0

    .line 1468
    move v2, v0

    .line 1474
    .end local v0    # "id":I
    .end local v1    # "isKnoxMode":Z
    .end local v3    # "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    :cond_1
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "knoxUserId id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1475
    return v2
.end method

.method public static getLineCtrlEvent(Lcom/android/incallui/Call;)B
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "lineCtrl":B
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getLineCtrl(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 293
    :cond_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLineCtrlEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return v0

    .line 291
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1992
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1993
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 1994
    .local v4, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1995
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 1996
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 1997
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 1998
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 1999
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2000
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 2028
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    :goto_0
    return-object v4

    .line 2001
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v6, :cond_2

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v6, :cond_3

    .line 2002
    :cond_2
    const-string v6, "InCallUtils"

    const-string v7, "getNumber(), set original number"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2003
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    .line 2004
    :cond_3
    const-string v6, "roaming_auto_dial"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2005
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "feature_lgt"

    .line 2006
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2007
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2008
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2009
    :cond_4
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2010
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2011
    .local v1, "currentIso":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2012
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2014
    :cond_5
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2015
    .local v3, "formattedNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 2016
    invoke-static {v6, p0}, Lcom/android/incallui/util/NameNumberUtils;->isKorIsoWithNationalNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2017
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNumber(), set original number for kor iso"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 2021
    .end local v1    # "currentIso":Ljava/lang/String;
    .end local v3    # "formattedNumber":Ljava/lang/String;
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2022
    .local v5, "voiceMailTag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2023
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getSecondIconName(Ljava/lang/String;ILcom/android/incallui/Call;)I
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "iconType"    # I
    .param p2, "secondaryCall"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 782
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 784
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .local v1, "iconName":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_0
    const-string v2, "voicecall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    if-ne p1, v5, :cond_2

    .line 789
    const-string v2, "_hd_common"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    const-string v2, "_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_1
    :goto_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecondIconName() iconName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 802
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 793
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 794
    const-string v2, "_wifi_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    const-string v2, "_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 798
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 799
    const-string v2, "_hd_common_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getSharedDeviceList()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1659
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1661
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSharedDevice(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1663
    :cond_0
    return-object v1
.end method

.method public static getSimReceiveId()I
    .locals 2

    .prologue
    .line 2046
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2047
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSimReceiveId(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getSubNumberId()I
    .locals 4

    .prologue
    .line 1579
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1580
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSubNumberId(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getSugudenAnswerSetting(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 520
    const-string v0, "content://com.nttdocomo.android.phonemotion"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "answer"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    .local v1, "URI":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 523
    .local v6, "answer_setting":Z
    if-eqz p0, :cond_1

    .line 524
    const/4 v7, 0x0

    .line 526
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 529
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_0

    .line 531
    const/4 v6, 0x1

    .line 536
    :cond_0
    if-eqz v7, :cond_1

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 540
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSugudenAnswerSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    return v6

    .line 536
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getTouchPoint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 206
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getTouchPoint(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTwoPhoneUserId(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1479
    invoke-static {p0}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v4

    .line 1480
    .local v4, "userManager":Lcom/android/incallui/wrapper/UserManagerWrapper;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 1482
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/wrapper/UserInfoWrapper;>;"
    const/4 v2, 0x0

    .line 1484
    .local v2, "twoPhoneId":I
    if-eqz v5, :cond_2

    .line 1485
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/wrapper/UserInfoWrapper;

    .line 1486
    .local v3, "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    if-eqz v3, :cond_0

    .line 1487
    invoke-virtual {v3}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isBMode()Z

    move-result v1

    .line 1488
    .local v1, "isBMode":Z
    invoke-virtual {v3}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v0

    .line 1489
    .local v0, "id":I
    if-eqz v1, :cond_0

    .line 1490
    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTwoPhoneUserId: isBMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 1492
    move v2, v0

    .line 1501
    .end local v0    # "id":I
    .end local v1    # "isBMode":Z
    .end local v3    # "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    :cond_1
    :goto_0
    return v2

    .line 1499
    :cond_2
    const-string v6, "InCallUtils"

    const-string v7, "UserInfo list is null."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 715
    const-string v2, "phone"

    .line 716
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 718
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "voiceMailNumber":Ljava/lang/String;
    return-object v1
.end method

.method public static getVoicetalkLocale()Ljava/util/Locale;
    .locals 9

    .prologue
    .line 1271
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1272
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1273
    .local v2, "previousLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "country":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1276
    .local v4, "voiceLocale":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1277
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMirrorLinkModeOn()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarAppRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1279
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicetalk_language"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1289
    :goto_0
    if-nez v4, :cond_7

    .line 1290
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1299
    :cond_1
    :goto_1
    const-string v6, "en-gb_GB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1300
    const-string v4, "en_GB"

    .line 1302
    :cond_2
    const-string v6, "feature_hktw"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1303
    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1304
    const-string v4, "en-US"

    .line 1308
    :cond_3
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1311
    .local v3, "splitVoiceLocale":[Ljava/lang/String;
    const/4 v6, 0x2

    array-length v7, v3

    if-ne v6, v7, :cond_9

    .line 1312
    new-instance v5, Ljava/util/Locale;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    .local v5, "voicetalkLocale":Ljava/util/Locale;
    :goto_2
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoicetalkLocale - previousLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voicetalkLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    return-object v5

    .line 1281
    .end local v3    # "splitVoiceLocale":[Ljava/lang/String;
    .end local v5    # "voicetalkLocale":Ljava/util/Locale;
    :cond_4
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "HK"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "TW"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1282
    :cond_5
    const-string v4, "en-US"

    goto/16 :goto_0

    .line 1285
    :cond_6
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1291
    :cond_7
    const-string v6, "v-es-LA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1292
    const-string v4, "es"

    goto/16 :goto_1

    .line 1293
    :cond_8
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1294
    const-string v6, "zh_CN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1295
    const-string v4, "zh-CN"

    goto/16 :goto_1

    .line 1314
    .restart local v3    # "splitVoiceLocale":[Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "voicetalkLocale":Ljava/util/Locale;
    goto :goto_2
.end method

.method public static isActiveTwoPhone()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 211
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsTwoPhoneMode(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 214
    :cond_0
    return v1
.end method

.method public static isAvailableEpdg()Z
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "canEpdg":Z
    const-string v1, "true"

    const-string v2, "ril.epdg.available"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 417
    return v0
.end method

.method public static isCHC()Z
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v1, 0x1

    .line 702
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCallNumberConverted()Z
    .locals 4

    .prologue
    .line 1356
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1357
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRadNumberConverted(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isCapableVideoCall(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1560
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1561
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return v3

    .line 1563
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    .line 1564
    .local v1, "isVTReg":Z
    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-static {p0, v5}, Lcom/android/incallui/util/InCallUtils;->checkIMSCapability(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v2, v4

    .line 1565
    .local v2, "modifyCall":Z
    :goto_1
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVTReg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ modifyCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1567
    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1571
    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :goto_2
    move v3, v4

    goto :goto_0

    .end local v2    # "modifyCall":Z
    :cond_4
    move v2, v3

    .line 1564
    goto :goto_1

    .restart local v2    # "modifyCall":Z
    :cond_5
    move v4, v3

    .line 1571
    goto :goto_2
.end method

.method public static isCellC()Z
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    const/4 v1, 0x0

    .line 679
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCellCSIM()Z

    move-result v1

    goto :goto_0
.end method

.method public static isCellCSIM()Z
    .locals 4

    .prologue
    .line 667
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "simOperator":Ljava/lang/String;
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v1, "65507"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v1, 0x1

    .line 672
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCheckNotShowIncall4SyncCall()Z
    .locals 20

    .prologue
    .line 1913
    const-string v2, "support_sync_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1914
    const/4 v2, 0x0

    .line 1972
    .local v15, "context":Landroid/content/Context;
    :goto_0
    return v2

    .line 1917
    .end local v15    # "context":Landroid/content/Context;
    :cond_0
    const/4 v15, 0x0

    .line 1918
    .restart local v15    # "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 1919
    if-nez v15, :cond_1

    .line 1920
    const-string v2, "InCallUtils"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const/4 v2, 0x0

    goto :goto_0

    .line 1927
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v11

    .line 1928
    .local v11, "bScreenOn":Z
    invoke-static {v15}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v10

    .line 1929
    .local v10, "bKeyguardLock":Z
    const/16 v16, 0x0

    .line 1931
    .local v16, "enableSyncCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1932
    const-string v2, "InCallUtils"

    const-string v3, "Searching SyncCall settings..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const/4 v14, 0x0

    .line 1936
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.kddi.android.evc.SettingsProvider/system"

    .line 1937
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1936
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1938
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 1939
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1940
    const-string v17, ""

    .line 1941
    .local v17, "key":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1943
    .local v19, "value":I
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1944
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1945
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v2, "setting_use_synccall"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 1947
    const/16 v16, 0x1

    .line 1949
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1957
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "value":I
    :cond_4
    :goto_1
    if-eqz v14, :cond_5

    .line 1958
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1963
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1964
    .local v12, "bootTime":J
    const-wide/32 v8, 0x3d090

    .line 1965
    .local v8, "avgWorkingTime":J
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCheckNotShowIncall4SyncCall bScreenOn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / bKeyguardLock :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / enableSyncCall :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " btTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1967
    if-eqz v11, :cond_8

    if-nez v10, :cond_8

    if-eqz v16, :cond_8

    cmp-long v2, v12, v8

    if-lez v2, :cond_8

    .line 1968
    const-string v2, "InCallUtils"

    const-string v3, " not show Incall for SyncCall"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1969
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1952
    .end local v8    # "avgWorkingTime":J
    .end local v12    # "bootTime":J
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_6
    :try_start_1
    const-string v2, "InCallUtils"

    const-string v3, "Null cursor or no count from kddi evc query."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1954
    :catch_0
    move-exception v18

    .line 1955
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem getting content resolver or performing kddi evc query."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1957
    if-eqz v14, :cond_5

    .line 1958
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1957
    .end local v18    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 1958
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 1972
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v8    # "avgWorkingTime":J
    .restart local v12    # "bootTime":J
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static isChecked3GHDVoiceForKT()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1381
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1382
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isHDVoicePrefered()Z

    move-result v1

    .line 1383
    .local v1, "isHDVoicePrefered":Z
    const-string v3, "hd_voice_network_prefer"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1385
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isKTSIM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1386
    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1387
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return v2

    .line 1390
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isChnCuSIM()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 685
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 687
    .local v0, "firstCall":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isCUSIM(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 694
    .end local v0    # "firstCall":Lcom/android/incallui/Call;
    .local v1, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 689
    .end local v1    # "simOperator":Ljava/lang/String;
    :cond_1
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .restart local v1    # "simOperator":Ljava/lang/String;
    const-string v3, "46001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46006"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46009"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "45407"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDefaultIMEI()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 454
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 455
    .local v0, "context":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 456
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "imei":Ljava/lang/String;
    const-string v4, "357858010034783"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "000000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "004400152020002"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    :cond_0
    const-string v4, "InCallUtils"

    const-string v5, "International Mobile Equipment Identity is initial state"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 461
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDialToKoreaForRAD()Z
    .locals 4

    .prologue
    .line 218
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 219
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsDialToKoreaForRAD(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isEcholocateEnabled()Z
    .locals 1

    .prologue
    .line 227
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEcholocateEnabled(Ljava/lang/String;)Z
    .locals 11
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "enabled":Z
    const/4 v5, 0x0

    .line 236
    .local v5, "tmpSettingValue":Ljava/lang/String;
    const-string v8, "InCallUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEcholocateEnabled name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    const-string v8, "tmo_echolocate_logger_setting"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "echo_setting"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "EchoIntent":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_3

    .line 241
    const-string v8, "InCallUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEcholocateEnabled EchoIntent["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    aget-object v8, v0, v4

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "EchoIntentValue":[Ljava/lang/String;
    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, "EchoValue":I
    aget-object v8, v1, v7

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 245
    if-ne v2, v6, :cond_1

    move v3, v6

    .line 240
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v3, v7

    .line 245
    goto :goto_1

    .line 248
    .end local v0    # "EchoIntent":[Ljava/lang/String;
    .end local v1    # "EchoIntentValue":[Ljava/lang/String;
    .end local v2    # "EchoValue":I
    .end local v4    # "i":I
    :cond_2
    const-string v7, "tmo_echolocate_logger"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    const/4 v3, 0x1

    .line 251
    :cond_3
    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEcholocateEnabled enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    return v3
.end method

.method public static isExistsSuguden()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 492
    const-string v2, "com.nttdocomo.android.phonemotion"

    .line 493
    .local v2, "PACKAGE_NAME":Ljava/lang/String;
    const-string v0, "motion"

    .line 494
    .local v0, "META_NAME":Ljava/lang/String;
    const-string v1, "setting"

    .line 495
    .local v1, "META_VALUE":Ljava/lang/String;
    const/4 v3, 0x0

    .line 496
    .local v3, "appliInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 497
    .local v6, "exists":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    .line 500
    .local v4, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 501
    if-eqz v3, :cond_0

    iget-boolean v8, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_0

    .line 503
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    .line 504
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    const/4 v6, 0x1

    .line 515
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, "InCallUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suguden exists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 516
    return v6

    .line 506
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 513
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "InCallUtils"

    const-string v9, "NameNotFoundException"

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static isFakeRAD()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 448
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rad_dial_fake_operation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 449
    .local v1, "isFakeRad":I
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFakeRad : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-eqz v1, :cond_0

    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isFindService()Z
    .locals 6

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->isCarrierLockPlusEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 424
    .local v2, "isCarrierLockPlusEnabled":Z
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFindService() : isCarrierLockPlusEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v2    # "isCarrierLockPlusEnabled":Z
    :goto_0
    return v2

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "InCallUtils"

    const-string v4, "isFindService() : SecurityException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFolerClosed()Z
    .locals 6

    .prologue
    .line 1418
    const/4 v1, 0x0

    .line 1419
    .local v1, "isClosed":Z
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1420
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1421
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1422
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1423
    const/4 v1, 0x1

    .line 1426
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFolerClosed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1427
    return v1
.end method

.method public static isForwardingPresentation(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "isAllowed":Z
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getForwardingPresentation(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "presentation":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    const/4 v0, 0x1

    .line 1251
    :cond_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForwardingPresentation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1252
    return v0
.end method

.method public static isFullScreenMode()Z
    .locals 1

    .prologue
    .line 597
    sget-boolean v0, Lcom/android/incallui/util/InCallUtils;->sIsFullScreen:Z

    return v0
.end method

.method public static isHDiconNotSupportUsim()Z
    .locals 1

    .prologue
    .line 939
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isTDCSIM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isTELSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    :cond_0
    const/4 v0, 0x1

    .line 942
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHasAMRWB()Z
    .locals 2

    .prologue
    .line 992
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec()I

    move-result v0

    .line 993
    .local v0, "audio_codec":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasAMRWB(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 972
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec(Lcom/android/incallui/Call;)I

    move-result v0

    .line 973
    .local v0, "audio_codec":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasEVSSWB()Z
    .locals 2

    .prologue
    .line 997
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec()I

    move-result v0

    .line 998
    .local v0, "audio_codec":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasEVSSWB(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 977
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec(Lcom/android/incallui/Call;)I

    move-result v0

    .line 978
    .local v0, "audio_codec":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasNB()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 987
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec()I

    move-result v0

    .line 988
    .local v0, "audio_codec":I
    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasNB(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    .line 967
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec(Lcom/android/incallui/Call;)I

    move-result v0

    .line 968
    .local v0, "audio_codec":I
    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasWBorSWB()Z
    .locals 2

    .prologue
    .line 1002
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec()I

    move-result v0

    .line 1003
    .local v0, "audio_codec":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHasWBorSWB(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 982
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCallAudioCodec(Lcom/android/incallui/Call;)I

    move-result v0

    .line 983
    .local v0, "audio_codec":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHideCallerInfo()Z
    .locals 6

    .prologue
    .line 475
    const/4 v2, 0x0

    .line 476
    .local v2, "isHide":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 477
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 478
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 479
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 482
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 483
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v3, :cond_1

    .line 485
    const/4 v2, 0x1

    .line 488
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    return v2
.end method

.method public static isInLockTaskMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1431
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1432
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1433
    const-string v3, "InCallUtils"

    const-string v4, "isInLockTaskMode : context is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_0
    :goto_0
    return v2

    .line 1437
    :cond_1
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1438
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1439
    const-string v2, "InCallUtils"

    const-string v3, "isInLockTaskMode is ture"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isIntIncomingCall(Ljava/lang/String;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    .line 1362
    const/4 v3, 0x0

    .line 1364
    .local v3, "result":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1365
    .local v0, "context":Landroid/content/Context;
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1367
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1369
    .local v1, "mcc":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 1370
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1372
    :cond_0
    if-eqz p0, :cond_2

    const-string v5, "00"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "450"

    .line 1373
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1374
    const/4 v3, 0x1

    .line 1377
    :cond_2
    return v3
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 725
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 726
    const/high16 v4, 0x10000

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 727
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIntentRegistered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 728
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 731
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    move v2, v3

    .line 728
    goto :goto_0

    .line 730
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v4, "InCallUtils"

    const-string v5, "PackageManager is null."

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v3

    .line 731
    goto :goto_0
.end method

.method public static isKTSIM()Z
    .locals 3

    .prologue
    .line 648
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "simOperator":Ljava/lang/String;
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "simType":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    :cond_0
    const/4 v2, 0x1

    .line 652
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLGTSIM()Z
    .locals 3

    .prologue
    .line 656
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "simOperator":Ljava/lang/String;
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "simType":Ljava/lang/String;
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    :cond_0
    const/4 v2, 0x1

    .line 663
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMergeAfterAnswer()Z
    .locals 1

    .prologue
    .line 1184
    sget-boolean v0, Lcom/android/incallui/util/InCallUtils;->sMakeMergeAfterAnswer:Z

    return v0
.end method

.method public static isMobileKeyboardCovered()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "isCovered":Z
    const-string v3, "support_mobile_keyboard"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 390
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 391
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v5, :cond_0

    .line 392
    const/4 v1, 0x1

    .line 394
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "InCallUtils"

    const-string v4, "isMobileKeyboardCovered is true"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_1
    return v1
.end method

.method public static isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "policyString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1610
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1612
    .local v1, "uri":Landroid/net/Uri;
    if-eqz p0, :cond_1

    .line 1613
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v4, v8

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1614
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1616
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1617
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1625
    .end local v6    # "cr":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 1621
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_1
    move v0, v8

    .line 1625
    goto :goto_0

    .line 1621
    .restart local v6    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isRoamingArea()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, "result":Z
    const-string v5, "ril.currentplmn"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "current_plmn":Ljava/lang/String;
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRoamingArea : current_plmn is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isDefaultIMEI()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 549
    :cond_0
    const-string v5, "InCallUtils"

    const-string v6, "isRoamingArea : DefaultIMEI"

    invoke-static {v5, v6, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v4

    .line 562
    .end local v2    # "result":Z
    :cond_1
    :goto_0
    return v2

    .line 552
    .restart local v2    # "result":Z
    :cond_2
    const-string v5, "oversea"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isSimCardReady()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 553
    :goto_1
    const-string v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    const-string v3, "ril.rejectedPlmn"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "rejectedPlmn":Ljava/lang/String;
    const-string v3, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejected PLMN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 557
    const-string v3, "450"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isLGTSIM()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "rejectedPlmn":Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 552
    goto :goto_1
.end method

.method public static isSKTSIM()Z
    .locals 3

    .prologue
    .line 640
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "simOperator":Ljava/lang/String;
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "simType":Ljava/lang/String;
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    :cond_0
    const/4 v2, 0x1

    .line 644
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShowCallDetailsEpdgIcon()Z
    .locals 4

    .prologue
    .line 1029
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1030
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 1034
    if-eqz p0, :cond_0

    .line 1035
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 1036
    .local v0, "epdgCall":Z
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 1038
    .local v1, "hasDowngradedEPDGCall":Z
    :goto_0
    const-string v3, "support_vowifi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 1043
    .end local v0    # "epdgCall":Z
    .end local v1    # "hasDowngradedEPDGCall":Z
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "epdgCall":Z
    :cond_1
    move v1, v2

    .line 1036
    goto :goto_0

    .restart local v1    # "hasDowngradedEPDGCall":Z
    :cond_2
    move v2, v0

    .line 1041
    goto :goto_1
.end method

.method public static isShowCallDetailsHDIcon()Z
    .locals 4

    .prologue
    .line 946
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 947
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 951
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getHDIcon(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "hdIcon":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 963
    :goto_0
    return v1

    .line 954
    :cond_0
    const-string v3, "display_hd_icon"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "display_cshd_icon"

    .line 955
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 956
    const-string v3, "InCallUtils"

    const-string v4, "isShowCallDetailsHDIcon : HDicon not support : "

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 962
    .local v1, "showHD":Z
    :cond_2
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowCallDetailsHDIcon showHD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v1, 0x0

    .line 2052
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2053
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2054
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return v1

    .line 2057
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2060
    const/4 v4, 0x1

    .line 2061
    .local v4, "show":Z
    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 2062
    .local v0, "contactExists":Z
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v3

    .line 2063
    .local v3, "mEmergencyMode":Z
    const/4 v2, 0x0

    .line 2064
    .local v2, "isOtherModeNumber":Z
    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2065
    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    .line 2066
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2067
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2068
    :cond_3
    const/4 v2, 0x1

    .line 2071
    :cond_4
    if-eqz v0, :cond_5

    iget-wide v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    .line 2072
    .local v1, "isEnterpriseContact":Z
    :cond_5
    iget v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    iget v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v5, :cond_6

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 2076
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 2080
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2081
    :cond_6
    const/4 v4, 0x0

    :cond_7
    move v1, v4

    .line 2083
    goto :goto_0
.end method

.method public static isShowHDVoiceIcon()Z
    .locals 4

    .prologue
    .line 833
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 834
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z
    .locals 10
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v6, 0xd

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "bShowHDVoice":Z
    if-nez p0, :cond_0

    .line 840
    const-string v4, "InCallUtils"

    const-string v5, "isShowHDVoiceIcon() call is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 935
    :goto_0
    return v4

    .line 843
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHDiconNotSupportUsim()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    const-string v5, "InCallUtils"

    const-string v6, "isShowHDVoiceIcon() not supported by operator"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_1
    const-string v5, "display_hd_icon"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "display_cshd_icon"

    .line 848
    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 849
    const-string v5, "InCallUtils"

    const-string v6, "isShowHDVoiceIcon : HDicon not support : "

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 853
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 854
    .local v2, "isPSDomain":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->isHasWBorSWB(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 856
    .local v3, "isWBMode":Z
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_kor_open"

    .line 857
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isSKTSIM()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 858
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 859
    :cond_4
    const/4 v0, 0x0

    .line 934
    :cond_5
    :goto_1
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShowHDVoiceIcon() isWBMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ShowHDVoice :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v0

    .line 935
    goto :goto_0

    .line 860
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 861
    const/4 v0, 0x1

    goto :goto_1

    .line 862
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 863
    const/4 v0, 0x1

    goto :goto_1

    .line 865
    :cond_8
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "feature_kor_open"

    .line 866
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 867
    :cond_9
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 868
    const/4 v0, 0x0

    goto :goto_1

    .line 869
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 870
    const/4 v0, 0x1

    goto :goto_1

    .line 871
    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 872
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 874
    :cond_c
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 875
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 876
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 877
    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v8, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_10

    :cond_f
    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    .line 878
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 879
    :cond_10
    const-string v4, "support_chn_cu_hd_voice_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCHC()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 880
    :cond_11
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v8, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    :cond_12
    if-eqz v3, :cond_5

    .line 881
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChnCuSIM()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 882
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 884
    :cond_13
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 885
    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    .line 886
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 887
    .local v1, "disconnectCause":Landroid/telecom/DisconnectCause;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-ne v4, v9, :cond_14

    .line 888
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_14

    .line 889
    const/4 v0, 0x0

    .line 890
    const-string v4, "InCallUtils"

    const-string v5, "isShowHDVoiceIcon false during incoming reject "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 891
    :cond_14
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v9, :cond_15

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_16

    .line 892
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 894
    :cond_16
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 897
    .end local v1    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 899
    :cond_18
    const-string v4, "singapore_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 900
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 901
    .restart local v1    # "disconnectCause":Landroid/telecom/DisconnectCause;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_19

    .line 902
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_19

    .line 903
    const/4 v0, 0x0

    .line 904
    const-string v4, "InCallUtils"

    const-string v5, "isShowHDVoiceIcon is false in BUSY "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 905
    :cond_19
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_1b

    .line 906
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 907
    :cond_1b
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 908
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 910
    .end local v1    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_1c
    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "mpcs_volte_ui"

    .line 911
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "spr_display_hd_icon"

    .line 912
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "display_cshd_icon"

    .line 913
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 914
    :cond_1d
    if-eqz v3, :cond_1e

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 917
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 919
    :cond_1f
    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_21

    :cond_20
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 921
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 922
    :cond_21
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v3, :cond_22

    .line 923
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 925
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 928
    :cond_23
    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    .line 929
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 931
    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static isShowVZWVoLTEUI()Z
    .locals 2

    .prologue
    .line 1446
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVZWLTEVideoCallMenuShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1448
    .local v0, "show":Z
    :goto_0
    return v0

    .line 1447
    .end local v0    # "show":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimCardReady()Z
    .locals 2

    .prologue
    .line 466
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "simState":Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 470
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCallTransfer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1071
    const-string v1, "support_call_transfer"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isKTSIM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTDCSIM()Z
    .locals 4

    .prologue
    .line 706
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "simOperator":Ljava/lang/String;
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "23801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "23810"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    :cond_0
    const/4 v1, 0x1

    .line 711
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTwoPhoneUser(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1505
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1506
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    .line 1507
    .local v1, "currentUserId":I
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1508
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getTwoPhoneUserId(Landroid/content/Context;)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUriExist(Landroid/net/Uri;)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 375
    if-eqz v1, :cond_0

    .line 377
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "InCallUtils"

    const-string v3, "isUriExist : IOException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v2, "InCallUtils"

    const-string v3, "isUriExist : FileNotFoundException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    const/4 v2, 0x0

    .line 375
    if-eqz v1, :cond_1

    .line 377
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 378
    :catch_2
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "InCallUtils"

    const-string v4, "isUriExist : IOException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 377
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 380
    :cond_2
    :goto_2
    throw v2

    .line 378
    :catch_3
    move-exception v0

    .line 379
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "InCallUtils"

    const-string v4, "isUriExist : IOException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isVipModeReject(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1636
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1637
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVipModeReject number :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const/4 v4, 0x0

    .line 1640
    .local v4, "retData":Z
    const-string v5, "content://com.sec.android.app.firewall"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1642
    .local v0, "FIREWALL_PROVIDER_URI":Landroid/net/Uri;
    const-string v5, "number"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "should_block"

    const-string v7, "call"

    invoke-virtual {v5, v0, v6, v7, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1646
    .local v3, "result":Landroid/os/Bundle;
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVipModeReject result :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    if-eqz v3, :cond_0

    const-string v5, "response"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1648
    const-string v5, "response"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1654
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVipModeReject retData :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    return v4

    .line 1650
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static needToDisableForKnox(I)Z
    .locals 5
    .param p0, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 1168
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getKnoxCustomDisabledItems()I

    move-result v0

    .line 1169
    .local v0, "disabledItems":I
    and-int/lit16 v2, v0, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 1170
    const-string v2, "InCallUtils"

    const-string v3, "needToDisableMenuForKnox: CALL_SCREEN_ALL"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1177
    :goto_0
    return v1

    .line 1173
    :cond_0
    and-int v2, v0, p0

    if-eqz v2, :cond_1

    .line 1174
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToDisableMenuForKnox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1341
    const/4 v0, 0x0

    .line 1342
    .local v0, "bDisplayVzwNewConfCallUI":Z
    const-string v2, "vzw_volte_ui_conf"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return v1

    .line 1345
    :cond_1
    if-eqz p0, :cond_0

    .line 1348
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1349
    const/4 v0, 0x1

    .line 1351
    :cond_2
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToDisplayVzwNewConfCallUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    .line 1352
    goto :goto_0
.end method

.method public static needToShowAsFullScreen()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1750
    const-string v0, "InCallUtils"

    const-string v1, "needToShowAsFullScreen"

    invoke-static {v0, v1, v13}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1751
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 1753
    .local v9, "mContext":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "InCallUtils"

    const-string v1, "it needs to show call screen as full screen when MirrorLink is enable"

    invoke-static {v0, v1, v13}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v13

    .line 1909
    :goto_0
    return v0

    .line 1758
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    const-string v0, "InCallUtils"

    const-string v1, "isVideoCall"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1760
    goto :goto_0

    .line 1763
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1764
    const-string v0, "InCallUtils"

    const-string v1, "isShowingInCallUi"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1765
    goto :goto_0

    .line 1768
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1769
    const-string v0, "InCallUtils"

    const-string v1, "it needs to show call screen as full screen when Car mode is on"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1770
    goto :goto_0

    .line 1773
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1774
    const-string v0, "InCallUtils"

    const-string v1, "isKidsModeCallApp"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1775
    goto :goto_0

    .line 1778
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1779
    const-string v0, "InCallUtils"

    const-string v1, "isCarmodeHome"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1780
    goto :goto_0

    .line 1783
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1784
    :cond_6
    const-string v0, "InCallUtils"

    const-string v1, "isDesktopMode, show popup service"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v14

    .line 1785
    goto :goto_0

    .line 1788
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v11

    .line 1789
    .local v11, "topActivity":Ljava/lang/String;
    if-eqz v11, :cond_9

    const-string v0, "com.sec.android.app.launcher.activities.LauncherActivity"

    .line 1790
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.sec.android.app.easylauncher.Launcher"

    .line 1791
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.launcher2.Launcher"

    .line 1792
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.sec.android.app.launcher"

    .line 1793
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.launcher2.LauncherApplication"

    .line 1794
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1795
    :cond_8
    const-string v0, "InCallUtils"

    const-string v1, "Launcher is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1796
    goto/16 :goto_0

    .line 1799
    :cond_9
    const-string v0, "dcm_packagename_for_fullscreen_incoming_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1801
    const-string v0, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-static {v9, v0}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1802
    const-string v0, "InCallUtils"

    const-string v1, "docomo LIVE UX Launcher is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1803
    goto/16 :goto_0

    .line 1807
    :cond_a
    const-string v0, "com.nttdocomo.android.kidsmode"

    invoke-static {v9, v0}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1808
    const-string v0, "InCallUtils"

    const-string v1, "docomo kidmode is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1809
    goto/16 :goto_0

    .line 1813
    :cond_b
    const-string v0, "com.nttdocomo.android.kids"

    invoke-static {v9, v0}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunningPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1814
    const-string v0, "InCallUtils"

    const-string v1, "docomo kidmode content is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1815
    goto/16 :goto_0

    .line 1819
    :cond_c
    const-string v0, "com.nttdocomo.android.mediaplayer"

    invoke-static {v9, v0}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1820
    const-string v0, "InCallUtils"

    const-string v1, "docomo mediaplayer is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1821
    goto/16 :goto_0

    .line 1825
    :cond_d
    invoke-static {v9}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1826
    const-string v0, "InCallUtils"

    const-string v1, "isKeyguardLocked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1827
    goto/16 :goto_0

    .line 1830
    :cond_e
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1831
    const-string v0, "InCallUtils"

    const-string v1, "!pm.isScreenOn()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1832
    goto/16 :goto_0

    .line 1835
    :cond_f
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1836
    const-string v0, "InCallUtils"

    const-string v1, "isCoverClosed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1837
    goto/16 :goto_0

    .line 1840
    :cond_10
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1841
    const-string v0, "InCallUtils"

    const-string v1, " - Bike mode on. Show as Full."

    invoke-static {v0, v1, v13}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v13

    .line 1842
    goto/16 :goto_0

    .line 1845
    :cond_11
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->getKnoxKeyguardShowState()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1846
    const-string v0, "InCallUtils"

    const-string v1, "KnoxKeyguard is top"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1847
    goto/16 :goto_0

    .line 1850
    :cond_12
    invoke-static {v9}, Lcom/android/incallui/util/SystemServiceUtils;->isCameraForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1851
    const-string v0, "InCallUtils"

    const-string v1, "isCameraForeground"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1852
    goto/16 :goto_0

    .line 1855
    :cond_13
    const-string v0, "support_sync_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1856
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1857
    const-string v0, "InCallUtils"

    const-string v1, "Searching SyncCall settings..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const/4 v6, 0x0

    .line 1861
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.kddi.android.evc.SettingsProvider/system"

    .line 1862
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1861
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1863
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1864
    const/4 v7, 0x0

    .line 1865
    .local v7, "enableSyncCall":Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1866
    const-string v8, ""

    .line 1867
    .local v8, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1869
    .local v12, "value":I
    :cond_14
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1870
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1871
    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "setting_use_synccall"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-ne v12, v13, :cond_15

    .line 1873
    const/4 v7, 0x1

    .line 1875
    :cond_15
    const-string v0, "setting_use_incoming_show_pu"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1876
    if-eqz v7, :cond_17

    if-ne v12, v13, :cond_17

    .line 1877
    const-string v0, "InCallUtils"

    const-string v1, "SyncCall \'Display the popup on an incoming call\' setting is ON."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    if-eqz v6, :cond_16

    .line 1893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_16
    move v0, v13

    goto/16 :goto_0

    .line 1880
    :cond_17
    :try_start_1
    const-string v0, "InCallUtils"

    const-string v1, "SyncCall \'Display the popup on an incoming call\' setting is OFF."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1892
    .end local v7    # "enableSyncCall":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "value":I
    :cond_18
    :goto_1
    if-eqz v6, :cond_19

    .line 1893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1898
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_19
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1899
    const-string v0, "InCallUtils"

    const-string v1, "isEmergencyMode"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1900
    goto/16 :goto_0

    .line 1884
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "enableSyncCall":Z
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v12    # "value":I
    :cond_1a
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1

    .line 1887
    .end local v7    # "enableSyncCall":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "value":I
    :cond_1b
    const-string v0, "InCallUtils"

    const-string v1, "Null cursor or no count from kddi evc query."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1889
    :catch_0
    move-exception v10

    .line 1890
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem getting content resolver or performing kddi evc query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1892
    if-eqz v6, :cond_19

    .line 1893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1892
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1c

    .line 1893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1c
    throw v0

    .line 1903
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1d
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1904
    const-string v0, "InCallUtils"

    const-string v1, "daydream isDreaming"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 1905
    goto/16 :goto_0

    .line 1908
    :cond_1e
    const-string v0, "InCallUtils"

    const-string v1, "needToShowAsFullScreen false"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v14

    .line 1909
    goto/16 :goto_0
.end method

.method public static needToShowCustomOutgoingAnimation()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1091
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1103
    .local v1, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v2

    .line 1092
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1093
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMirrorLinkModeOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1094
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1095
    .restart local v1    # "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1098
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1099
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 1103
    goto :goto_0
.end method

.method public static needToShowMultiparty()Z
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 193
    .local v0, "needToShow":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 194
    const/4 v0, 0x0

    .line 200
    :cond_1
    :goto_1
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMultiparty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v0

    .line 192
    .end local v0    # "needToShow":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    .restart local v0    # "needToShow":Z
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 196
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static needToShowRichScreen(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1736
    const-string v1, "rich_call_screen_cmcc"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return v0

    .line 1738
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isCMCCSIM(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1742
    sget-object v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1744
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 1746
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needToShowTabLock()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 323
    const-string v2, "lock_screen_during_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 327
    const-string v2, "InCallUtils"

    const-string v3, "- is not ROUTE_EARPIECE"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    const-string v2, "InCallUtils"

    const-string v3, "- is not foreground"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 334
    :cond_2
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 335
    const-string v2, "InCallUtils"

    const-string v3, "- is not focused"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 338
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    const-string v2, "InCallUtils"

    const-string v3, "- is Universal Switch Enable"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v2

    if-nez v2, :cond_5

    .line 343
    const-string v2, "InCallUtils"

    const-string v3, "- is not offhook"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 346
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    const-string v2, "InCallUtils"

    const-string v3, "- is videocall"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTackBackModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 351
    const-string v2, "InCallUtils"

    const-string v3, "- isTackBackModeOn"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method public static needToShowVoiceControlNotification()Z
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1084
    .local v0, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1085
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isVoiceControlOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/TelecomAdapter;->shouldVibrate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    const/4 v1, 0x1

    .line 1087
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needToUpdateEmerencyCallState(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getUpdateEmergencyCallstate(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static sendBroadcastContactCallState(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1693
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1697
    :cond_0
    const-string v0, "com.samsung.incall.ACTION_CALL_CONNECTED"

    .line 1699
    .local v0, "ACTION_CHANGE_CALL_STATE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1700
    .local v1, "IntentParam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "IntentParam":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1701
    .restart local v1    # "IntentParam":Landroid/os/Bundle;
    const-string v3, "state"

    const-string v4, "connected"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1704
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1705
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1708
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast intent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .prologue
    .line 1397
    const-string v3, "support_uwa"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    const-string v0, "com.uplus.agent.action.CalllDialpad"

    .line 1403
    .local v0, "ACTION_CHANGE_DIAL_PAD":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1404
    .local v1, "UwaIntentParam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "UwaIntentParam":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .restart local v1    # "UwaIntentParam":Landroid/os/Bundle;
    const-string v3, "CallDialpadopen"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1407
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1408
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1409
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1411
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast UWA intent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type_detail"    # Ljava/lang/String;

    .prologue
    .line 1712
    const-string v0, "com.samsung.android.app.reminder.action.REGISTER"

    .line 1713
    .local v0, "REMINDER_ACTION_REGISTER":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1714
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1715
    .local v4, "mContext":Landroid/content/Context;
    const/4 v5, 0x0

    .line 1716
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1717
    .local v6, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1718
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 1719
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 1720
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1721
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 1725
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "type"

    const-string v8, "call"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    const-string v7, "type_detail"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    const-string v7, "primary_text"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    const-string v7, "secondary_text"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    const-string v7, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1732
    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send broadcast intent action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extra [primary_text : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", secondary_text : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method public static sendBroadcastToTGroupOn(Ljava/lang/String;)V
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1107
    const-string v1, "support_tgroupon"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToTGroupOn()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.tgroupon.action.NOTIFY_CALL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1113
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendEcholocateUIState(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 256
    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMO_ECHOLOCATE_LOGGER setCallState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    packed-switch p0, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    sput p0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    .line 286
    :cond_0
    return-void

    .line 259
    :pswitch_1
    sget v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 260
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_CONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 261
    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_0

    .line 266
    :pswitch_2
    sget v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 269
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->RINGING:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 270
    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_0

    .line 273
    :pswitch_3
    sget v0, Lcom/android/incallui/util/InCallUtils;->sOldCallState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 274
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->END_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 275
    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 7
    .param p0, "incomingCall"    # Lcom/android/incallui/Call;
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v6, 0x4

    .line 1117
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 1118
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1119
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v3

    .line 1120
    .local v3, "presentation":I
    const/4 v1, 0x0

    .line 1122
    .local v1, "currentCallerName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.sda.action.RINGING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.nttdocomo.android.smartdeviceagent"

    const-string v5, "com.nttdocomo.android.smartdeviceagent.RingingReceiver"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string v5, "com.android.phone.sda.extra.CALL_TYPE"

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    if-nez p1, :cond_5

    .line 1129
    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    const-string v5, "unknown"

    invoke-virtual {v4, v0, v5}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1133
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    const-string v5, "private_num"

    invoke-virtual {v4, v0, v5}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :cond_1
    :goto_1
    const-string v4, "com.android.phone.sda.extra.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1152
    const-string v4, "InCallUtils"

    const-string v5, "Ringing intent send to Smart Device Agent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "currentCallerName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "presentation":I
    :cond_2
    return-void

    .line 1126
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "currentCallerName":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "presentation":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1134
    :cond_4
    if-ne v3, v6, :cond_1

    .line 1135
    const v4, 0x7f09005d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1138
    :cond_5
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1139
    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA originNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_1

    .line 1141
    :cond_7
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1142
    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1330
    .local v1, "previousLocale":Ljava/util/Locale;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1331
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1332
    .local v0, "configuration":Landroid/content/res/Configuration;
    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1333
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1335
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfigurationLocale - previousLocale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " locale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-object v1
.end method

.method public static setFullScreenMode(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 593
    sput-boolean p0, Lcom/android/incallui/util/InCallUtils;->sIsFullScreen:Z

    .line 594
    return-void
.end method

.method public static setMergeAfterAnswer(Z)V
    .locals 3
    .param p0, "merge"    # Z

    .prologue
    .line 1188
    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMergeAfterAnswer - merge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1189
    sput-boolean p0, Lcom/android/incallui/util/InCallUtils;->sMakeMergeAfterAnswer:Z

    .line 1190
    return-void
.end method

.method public static setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1324
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static translateDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 6
    .param p0, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 566
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 589
    :goto_0
    return v2

    .line 571
    :cond_0
    const-string v3, "\\, "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "result":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v4, :cond_1

    .line 573
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 580
    :goto_1
    if-nez v0, :cond_3

    .line 581
    const-string v3, "InCallUtils"

    const-string v4, "translateDisconnectCause: reason is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    array-length v3, v1

    if-le v3, v4, :cond_2

    .line 575
    aget-object v0, v1, v4

    goto :goto_1

    .line 577
    :cond_2
    const-string v3, "InCallUtils"

    const-string v4, "translateDisconnectCause: result.length is 0"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-static {v0}, Lcom/android/incallui/wrapper/DisconnectCauseWrapper;->disconnectCauseId(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "telephonyDisconnectCause":I
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "telephonyDisconnectCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

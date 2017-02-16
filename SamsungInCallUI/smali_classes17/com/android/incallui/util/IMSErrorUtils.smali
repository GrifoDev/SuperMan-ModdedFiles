.class public Lcom/android/incallui/util/IMSErrorUtils;
.super Ljava/lang/Object;
.source "IMSErrorUtils.java"


# static fields
.field public static final BT_COMMAND_STARTUP_ERROR:Ljava/lang/String; = "SERR"

.field public static final DIALOG:I = 0x3

.field public static final DIALOG_DIVERT:I = 0x4

.field public static final DIALOG_WIFI:I = 0x6

.field public static final LINE_IN_USE_ON_OTHER_DEVICE:I = 0x96d

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NONE:I = 0x0

.field public static final NOTI_TYPE:Ljava/lang/String; = "noti_type"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SHOW_ENDSCREEN:Ljava/lang/String; = "show_endscreen"

.field public static final SILENT_DIVERT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SECVT-IMSErrorUtils"

.field public static final TOAST:I = 0x1

.field public static final TOAST_DIVERT:I = 0x2

.field public static final TOVOLTE:Ljava/lang/String; = "toVoLTE"

.field private static mPSBarringEventReceived:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDivertToVoLTE()Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "canDo":Z
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :cond_0
    return v0
.end method

.method public static convertForDivertCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1582
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 1594
    :cond_0
    :goto_0
    return-object v0

    .line 1584
    :cond_1
    move-object v0, p0

    .line 1585
    .local v0, "tmpNumber":Ljava/lang/String;
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1586
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1587
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    :cond_2
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1591
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static divertToVoiceCall(Ljava/lang/String;ZI)V
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "toVoLTE"    # Z
    .param p2, "errorCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 1598
    if-nez p0, :cond_0

    .line 1623
    :goto_0
    return-void

    .line 1599
    :cond_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "divertToVoiceCall: toVoLTE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->convertForDivertCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, "divertNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    .line 1604
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 1605
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1606
    .local v1, "extras":Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 1607
    const-string v3, "cs_voice_call_outgoing"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1609
    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x19f

    if-ne p2, v3, :cond_2

    .line 1611
    const-string v3, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1613
    :cond_2
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1614
    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "twophone"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_3
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1617
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1618
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1619
    const-string v3, "extra_rad_skip_popup"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1620
    const-string v3, "extra_rad_dial_to_korea"

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingToKorea()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1622
    :cond_4
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1614
    :cond_5
    const-string v3, "onephone"

    goto :goto_1
.end method

.method public static getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 1194
    const-string v10, "getDisconnectCauseAction_ATT"

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1195
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1196
    .local v6, "retBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1197
    .local v9, "toVoLTE":Z
    const/4 v7, 0x0

    .line 1198
    .local v7, "showEndScreen":Z
    const/4 v3, 0x0

    .line 1200
    .local v3, "noti_type":I
    const-string v2, ""

    .line 1201
    .local v2, "message":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1202
    .local v5, "resId":I
    const/4 v8, 0x0

    .line 1203
    .local v8, "sip_error":I
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1205
    .local v1, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 1252
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 1253
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1254
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1259
    .local v4, "number":Ljava/lang/String;
    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1260
    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1264
    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1266
    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1271
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1277
    :cond_1
    return-object v6

    .line 1207
    .end local v4    # "number":Ljava/lang/String;
    :sswitch_0
    const/4 v3, 0x1

    .line 1208
    const v5, 0x7f0904e1

    .line 1209
    goto/16 :goto_0

    .line 1212
    :sswitch_1
    const/4 v3, 0x1

    .line 1213
    const v5, 0x7f0904e5

    .line 1214
    goto/16 :goto_0

    .line 1217
    :sswitch_2
    const/4 v3, 0x1

    .line 1218
    const v5, 0x7f0904e3

    .line 1219
    goto/16 :goto_0

    .line 1222
    :sswitch_3
    const/4 v3, 0x1

    .line 1223
    const v5, 0x7f0904e3

    .line 1224
    goto/16 :goto_0

    .line 1227
    :sswitch_4
    const/4 v3, 0x1

    .line 1228
    const v5, 0x7f0904e4

    .line 1229
    goto/16 :goto_0

    .line 1232
    :sswitch_5
    const/4 v3, 0x1

    .line 1233
    const v5, 0x7f0904e1

    .line 1234
    goto/16 :goto_0

    .line 1237
    :sswitch_6
    const/4 v3, 0x1

    .line 1238
    const v5, 0x7f0904e0

    .line 1239
    goto/16 :goto_0

    .line 1241
    :sswitch_7
    const/4 v3, 0x1

    .line 1242
    const v5, 0x7f090124

    .line 1243
    goto/16 :goto_0

    .line 1245
    :sswitch_8
    const v5, 0x7f0905c0

    .line 1246
    const/4 v3, 0x6

    .line 1247
    goto/16 :goto_0

    .line 1205
    :sswitch_data_0
    .sparse-switch
        0x453 -> :sswitch_8
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_2
        0xbbc -> :sswitch_3
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_5
        0xbbf -> :sswitch_6
        0xbc0 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_CellC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 11
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 1338
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1339
    .local v5, "retBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1340
    .local v8, "toVoLTE":Z
    const/4 v6, 0x0

    .line 1341
    .local v6, "showEndScreen":Z
    const/4 v2, 0x0

    .line 1343
    .local v2, "noti_type":I
    const-string v1, ""

    .line 1344
    .local v1, "message":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1345
    .local v4, "resId":I
    const/4 v7, 0x0

    .line 1347
    .local v7, "sip_error":I
    sparse-switch p1, :sswitch_data_0

    .line 1359
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 1360
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1361
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1364
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1366
    .local v3, "number":Ljava/lang/String;
    const-string v9, "toVoLTE"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1367
    const-string v9, "noti_type"

    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    const-string v9, "message"

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v9, "number"

    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v9, "show_endscreen"

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1371
    const-string v9, "errorCode"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TOVOLTE        : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOTI_TYPE      : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT 6:DIALOG_WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MESSAGE        : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NUMBER         : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "errorCode      : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   SIP_ERROR : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SHOW_ENDSCREEN : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1383
    :cond_1
    return-object v5

    .line 1351
    .end local v3    # "number":Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x6

    .line 1352
    const v4, 0x7f0905c0

    .line 1353
    goto/16 :goto_0

    .line 1347
    nop

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_0
        0x579 -> :sswitch_0
        0x6a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 1082
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1083
    .local v6, "retBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1084
    .local v9, "toVoLTE":Z
    const/4 v7, 0x0

    .line 1085
    .local v7, "showEndScreen":Z
    const/4 v3, 0x0

    .line 1087
    .local v3, "noti_type":I
    const-string v2, ""

    .line 1088
    .local v2, "message":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1089
    .local v5, "resId":I
    const/4 v8, 0x0

    .line 1090
    .local v8, "sip_error":I
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1092
    .local v1, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 1109
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 1110
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1111
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1121
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, "number":Ljava/lang/String;
    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1125
    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1128
    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1130
    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1136
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1141
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "retBundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-object v6

    .line 1097
    .restart local v6    # "retBundle":Landroid/os/Bundle;
    :sswitch_0
    if-eqz v1, :cond_2

    .line 1098
    const v5, 0x7f0900f2

    .line 1102
    const/4 v3, 0x3

    .line 1103
    goto/16 :goto_0

    .line 1100
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1092
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x1e7 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 398
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v9, "retBundle":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 404
    .local v12, "toVoLTE":Z
    const/4 v10, 0x1

    .line 405
    .local v10, "showEndScreen":Z
    const/4 v6, 0x0

    .line 407
    .local v6, "noti_type":I
    const-string v5, ""

    .line 408
    .local v5, "message":Ljava/lang/String;
    const/4 v8, -0x1

    .line 409
    .local v8, "resId":I
    const/4 v11, -0x1

    .line 410
    .local v11, "sip_error":I
    const/4 v3, -0x1

    .line 411
    .local v3, "display_error":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_4

    const/4 v1, 0x0

    .line 412
    .local v1, "autoDivertSettings":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 414
    .local v4, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 646
    :cond_0
    :goto_1
    const/4 v13, -0x1

    if-eq v8, v13, :cond_1

    .line 647
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    .line 648
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 650
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, -0x1

    if-eq v3, v13, :cond_2

    .line 651
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 670
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, "number":Ljava/lang/String;
    const-string v13, "toVoLTE"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 673
    const-string v13, "noti_type"

    invoke-virtual {v9, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    const-string v13, "message"

    invoke-virtual {v9, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v13, "number"

    invoke-virtual {v9, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v13, "show_endscreen"

    invoke-virtual {v9, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 679
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 680
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 681
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 682
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 683
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 684
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 685
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 686
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 687
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 690
    :cond_3
    return-object v9

    .line 411
    .end local v1    # "autoDivertSettings":Z
    .end local v4    # "isVideoCall":Z
    .end local v7    # "number":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 416
    .restart local v1    # "autoDivertSettings":Z
    .restart local v4    # "isVideoCall":Z
    :sswitch_0
    if-eqz v4, :cond_5

    .line 417
    const v8, 0x7f09019a

    .line 418
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 420
    :cond_5
    const v8, 0x7f0901bc

    .line 421
    const/4 v6, 0x1

    .line 423
    goto/16 :goto_1

    .line 426
    :sswitch_1
    if-eqz v4, :cond_6

    .line 427
    const v8, 0x7f09014d

    .line 428
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 430
    :cond_6
    const v8, 0x7f09019e

    .line 431
    const/4 v6, 0x1

    .line 433
    goto/16 :goto_1

    .line 436
    :sswitch_2
    if-eqz v4, :cond_7

    .line 437
    const v8, 0x7f090325

    .line 438
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 440
    :cond_7
    const v8, 0x7f09019d

    .line 441
    const/4 v6, 0x2

    .line 443
    goto/16 :goto_1

    .line 446
    :sswitch_3
    if-eqz v4, :cond_8

    .line 447
    const v8, 0x7f090156

    .line 448
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 450
    :cond_8
    const v8, 0x7f09019f

    .line 451
    const/4 v6, 0x1

    .line 453
    goto/16 :goto_1

    .line 456
    :sswitch_4
    if-eqz v4, :cond_9

    .line 457
    const v8, 0x7f090145

    .line 458
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 460
    :cond_9
    const v8, 0x7f09019b

    .line 461
    const/4 v6, 0x1

    .line 463
    goto/16 :goto_1

    .line 466
    :sswitch_5
    if-eqz v4, :cond_a

    .line 467
    const v8, 0x7f090327

    .line 468
    const/4 v6, 0x2

    .line 473
    :cond_a
    const/16 v11, 0x17c

    move v3, v11

    .line 474
    goto/16 :goto_1

    .line 477
    :sswitch_6
    const/16 v11, 0x193

    move v3, v11

    .line 478
    goto/16 :goto_1

    .line 481
    :sswitch_7
    if-eqz v4, :cond_b

    .line 482
    const v8, 0x7f090328

    .line 483
    const/4 v6, 0x2

    .line 488
    :cond_b
    const/16 v11, 0x194

    move v3, v11

    .line 489
    goto/16 :goto_1

    .line 492
    :sswitch_8
    const/16 v11, 0x198

    move v3, v11

    .line 493
    goto/16 :goto_1

    .line 496
    :sswitch_9
    if-eqz v4, :cond_d

    .line 497
    if-eqz v1, :cond_c

    .line 498
    const v8, 0x7f09016f

    .line 499
    const/4 v6, 0x2

    .line 508
    :goto_2
    const/16 v11, 0x19f

    .line 509
    goto/16 :goto_1

    .line 501
    :cond_c
    const v8, 0x7f090171

    .line 502
    const/4 v6, 0x4

    goto :goto_2

    .line 505
    :cond_d
    const v8, 0x7f0901ae

    .line 506
    const/4 v6, 0x2

    goto :goto_2

    .line 512
    :sswitch_a
    const/16 v11, 0x1e0

    .line 513
    goto/16 :goto_1

    .line 516
    :sswitch_b
    if-eqz v4, :cond_e

    .line 517
    const v8, 0x7f09017c

    .line 518
    const/4 v6, 0x1

    .line 523
    :goto_3
    const/16 v11, 0x1e4

    move v3, v11

    .line 524
    goto/16 :goto_1

    .line 520
    :cond_e
    const v8, 0x7f0901b2

    .line 521
    const/4 v6, 0x1

    goto :goto_3

    .line 527
    :sswitch_c
    if-eqz v4, :cond_f

    .line 528
    const v8, 0x7f090329

    .line 529
    const/4 v6, 0x1

    .line 534
    :goto_4
    const/16 v11, 0x1e6

    move v3, v11

    .line 535
    goto/16 :goto_1

    .line 531
    :cond_f
    const v8, 0x7f0901b3

    .line 532
    const/4 v6, 0x1

    goto :goto_4

    .line 538
    :sswitch_d
    const/16 v11, 0x1e7

    .line 539
    goto/16 :goto_1

    .line 542
    :sswitch_e
    if-eqz v4, :cond_10

    .line 543
    const v8, 0x7f09032a

    .line 544
    const/4 v6, 0x2

    .line 549
    :cond_10
    const/16 v11, 0x1f3

    move v3, v11

    .line 550
    goto/16 :goto_1

    .line 553
    :sswitch_f
    if-eqz v4, :cond_11

    .line 554
    const v8, 0x7f09032b

    .line 555
    const/4 v6, 0x1

    .line 557
    :cond_11
    const/16 v11, 0x1f4

    move v3, v11

    .line 558
    goto/16 :goto_1

    .line 561
    :sswitch_10
    if-eqz v4, :cond_12

    .line 562
    const v8, 0x7f09032c

    .line 563
    const/4 v6, 0x1

    .line 565
    :cond_12
    const/16 v11, 0x1f7

    move v3, v11

    .line 566
    goto/16 :goto_1

    .line 569
    :sswitch_11
    if-eqz v4, :cond_13

    .line 570
    const v8, 0x7f09032d

    .line 571
    const/4 v6, 0x1

    .line 573
    :cond_13
    const/16 v11, 0x1f8

    move v3, v11

    .line 574
    goto/16 :goto_1

    .line 577
    :sswitch_12
    if-eqz v4, :cond_14

    .line 578
    const v8, 0x7f09032e

    .line 579
    const/4 v6, 0x1

    .line 584
    :goto_5
    const/16 v11, 0x25b

    move v3, v11

    .line 585
    goto/16 :goto_1

    .line 581
    :cond_14
    const v8, 0x7f0901bb

    .line 582
    const/4 v6, 0x1

    goto :goto_5

    .line 588
    :sswitch_13
    if-eqz v4, :cond_15

    .line 589
    const v8, 0x7f090331

    .line 590
    const/4 v6, 0x2

    .line 594
    :goto_6
    const/16 v11, 0x25e

    move v3, v11

    .line 595
    goto/16 :goto_1

    .line 592
    :cond_15
    const/4 v6, 0x5

    goto :goto_6

    .line 598
    :sswitch_14
    if-eqz v4, :cond_0

    .line 599
    if-eqz v1, :cond_16

    .line 600
    const v8, 0x7f090152

    .line 601
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 603
    :cond_16
    const v8, 0x7f090154

    .line 604
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 609
    :sswitch_15
    if-eqz v4, :cond_0

    .line 610
    if-eqz v1, :cond_17

    .line 611
    const v8, 0x7f090152

    .line 612
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 614
    :cond_17
    const v8, 0x7f090154

    .line 615
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 620
    :sswitch_16
    if-eqz v4, :cond_0

    .line 621
    if-eqz v1, :cond_18

    .line 622
    const v8, 0x7f090152

    .line 623
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 625
    :cond_18
    const v8, 0x7f090154

    .line 626
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 631
    :sswitch_17
    if-eqz v4, :cond_0

    .line 632
    if-eqz v1, :cond_19

    .line 633
    const v8, 0x7f090152

    .line 634
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 636
    :cond_19
    const v8, 0x7f090154

    .line 637
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 694
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v7, "retBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v10

    .line 701
    .local v10, "toVoLTE":Z
    const/4 v8, 0x1

    .line 702
    .local v8, "showEndScreen":Z
    const/4 v4, 0x0

    .line 704
    .local v4, "noti_type":I
    const-string v3, ""

    .line 705
    .local v3, "message":Ljava/lang/String;
    const/4 v6, -0x1

    .line 706
    .local v6, "resId":I
    const/4 v9, 0x0

    .line 707
    .local v9, "sip_error":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v0, 0x0

    .line 708
    .local v0, "autoDivertSettings":Z
    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 711
    .local v2, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 1037
    :cond_0
    :goto_1
    :sswitch_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    .line 1038
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 1039
    .local v1, "context":Landroid/content/Context;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "1544-0010"

    aput-object v13, v11, v12

    invoke-virtual {v1, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1060
    .local v5, "number":Ljava/lang/String;
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1061
    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1066
    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1067
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIP_ERROR EVENT ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1068
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1069
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1070
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1071
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1072
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1073
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1074
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1075
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1078
    :cond_2
    return-object v7

    .line 707
    .end local v0    # "autoDivertSettings":Z
    .end local v2    # "isVideoCall":Z
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 713
    .restart local v0    # "autoDivertSettings":Z
    .restart local v2    # "isVideoCall":Z
    :sswitch_1
    if-eqz v2, :cond_0

    .line 714
    const v6, 0x7f09019a

    .line 715
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 720
    :sswitch_2
    if-eqz v2, :cond_4

    .line 721
    const v6, 0x7f09014e

    .line 722
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 724
    :cond_4
    const v6, 0x7f09019e

    .line 725
    const/4 v4, 0x1

    .line 727
    goto/16 :goto_1

    .line 733
    :sswitch_3
    if-eqz v2, :cond_0

    .line 734
    const v6, 0x7f090156

    .line 735
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 740
    :sswitch_4
    const-string v11, "single_lte"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 741
    if-eqz v2, :cond_5

    .line 742
    const v6, 0x7f090146

    .line 743
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 745
    :cond_5
    const v6, 0x7f09019c

    .line 746
    const/4 v4, 0x4

    .line 747
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 750
    :cond_6
    if-eqz v2, :cond_0

    .line 751
    const v6, 0x7f090144

    .line 752
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 758
    :sswitch_5
    if-eqz v2, :cond_7

    .line 759
    const v6, 0x7f090159

    .line 760
    const/4 v4, 0x2

    .line 762
    :cond_7
    const/16 v9, 0x17c

    .line 763
    goto/16 :goto_1

    .line 766
    :sswitch_6
    const/16 v9, 0x193

    .line 767
    goto/16 :goto_1

    .line 770
    :sswitch_7
    if-eqz v2, :cond_8

    .line 771
    if-eqz v0, :cond_9

    .line 772
    const v6, 0x7f090163

    .line 773
    const/4 v4, 0x2

    .line 779
    :cond_8
    :goto_2
    const/16 v9, 0x193

    .line 780
    goto/16 :goto_1

    .line 775
    :cond_9
    const v6, 0x7f090164

    .line 776
    const/4 v4, 0x4

    goto :goto_2

    .line 783
    :sswitch_8
    if-eqz v2, :cond_a

    .line 784
    if-eqz v0, :cond_b

    .line 785
    const v6, 0x7f090163

    .line 786
    const/4 v4, 0x2

    .line 792
    :cond_a
    :goto_3
    const/16 v9, 0x193

    .line 793
    goto/16 :goto_1

    .line 788
    :cond_b
    const v6, 0x7f090164

    .line 789
    const/4 v4, 0x4

    goto :goto_3

    .line 796
    :sswitch_9
    if-eqz v2, :cond_c

    .line 797
    if-eqz v0, :cond_d

    .line 798
    const v6, 0x7f090163

    .line 799
    const/4 v4, 0x2

    .line 805
    :cond_c
    :goto_4
    const/16 v9, 0x193

    .line 806
    goto/16 :goto_1

    .line 801
    :cond_d
    const v6, 0x7f090164

    .line 802
    const/4 v4, 0x4

    goto :goto_4

    .line 809
    :sswitch_a
    if-eqz v2, :cond_e

    .line 810
    if-eqz v0, :cond_f

    .line 811
    const v6, 0x7f090163

    .line 812
    const/4 v4, 0x2

    .line 818
    :cond_e
    :goto_5
    const/16 v9, 0x193

    .line 819
    goto/16 :goto_1

    .line 814
    :cond_f
    const v6, 0x7f090164

    .line 815
    const/4 v4, 0x4

    goto :goto_5

    .line 822
    :sswitch_b
    if-eqz v2, :cond_10

    .line 823
    if-eqz v0, :cond_11

    .line 824
    const v6, 0x7f090167

    .line 825
    const/4 v4, 0x2

    .line 831
    :cond_10
    :goto_6
    const/16 v9, 0x194

    .line 832
    goto/16 :goto_1

    .line 827
    :cond_11
    const v6, 0x7f090168

    .line 828
    const/4 v4, 0x4

    goto :goto_6

    .line 835
    :sswitch_c
    if-eqz v2, :cond_12

    .line 836
    const v6, 0x7f090169

    .line 837
    const/4 v4, 0x2

    .line 839
    :cond_12
    const/16 v9, 0x195

    .line 840
    goto/16 :goto_1

    .line 843
    :sswitch_d
    if-eqz v2, :cond_13

    .line 844
    const v6, 0x7f09016a

    .line 845
    const/4 v4, 0x2

    .line 847
    :cond_13
    const/16 v9, 0x196

    .line 848
    goto/16 :goto_1

    .line 851
    :sswitch_e
    if-eqz v2, :cond_14

    .line 852
    const v6, 0x7f09016c

    .line 853
    const/4 v4, 0x1

    .line 855
    :cond_14
    const/16 v9, 0x198

    .line 856
    goto/16 :goto_1

    .line 859
    :sswitch_f
    if-eqz v2, :cond_15

    .line 860
    if-eqz v0, :cond_16

    .line 861
    const v6, 0x7f09016f

    .line 862
    const/4 v4, 0x2

    .line 868
    :cond_15
    :goto_7
    const/16 v9, 0x19f

    .line 869
    goto/16 :goto_1

    .line 864
    :cond_16
    const v6, 0x7f090171

    .line 865
    const/4 v4, 0x4

    goto :goto_7

    .line 871
    :sswitch_10
    if-eqz v2, :cond_17

    .line 872
    if-eqz v0, :cond_18

    .line 873
    const v6, 0x7f090173

    .line 874
    const/4 v4, 0x2

    .line 880
    :cond_17
    :goto_8
    const/16 v9, 0x1a0

    .line 881
    goto/16 :goto_1

    .line 876
    :cond_18
    const v6, 0x7f090174

    .line 877
    const/4 v4, 0x4

    goto :goto_8

    .line 884
    :sswitch_11
    if-eqz v2, :cond_19

    .line 885
    if-eqz v0, :cond_1a

    .line 886
    const v6, 0x7f090175

    .line 887
    const/4 v4, 0x2

    .line 893
    :cond_19
    :goto_9
    const/16 v9, 0x1a4

    .line 894
    goto/16 :goto_1

    .line 889
    :cond_1a
    const v6, 0x7f090176

    .line 890
    const/4 v4, 0x4

    goto :goto_9

    .line 897
    :sswitch_12
    if-eqz v2, :cond_1b

    .line 898
    if-eqz v0, :cond_1c

    .line 899
    const v6, 0x7f09017a

    .line 900
    const/4 v4, 0x2

    .line 906
    :cond_1b
    :goto_a
    const/16 v9, 0x1e0

    .line 907
    goto/16 :goto_1

    .line 902
    :cond_1c
    const v6, 0x7f09017b

    .line 903
    const/4 v4, 0x4

    goto :goto_a

    .line 910
    :sswitch_13
    if-eqz v2, :cond_1d

    .line 911
    const v6, 0x7f09017c

    .line 912
    const/4 v4, 0x1

    .line 914
    :cond_1d
    const/16 v9, 0x1e4

    .line 915
    goto/16 :goto_1

    .line 918
    :sswitch_14
    if-eqz v2, :cond_1e

    .line 919
    const v6, 0x7f09017e

    .line 920
    const/4 v4, 0x1

    .line 922
    :cond_1e
    const/16 v9, 0x1e6

    .line 923
    goto/16 :goto_1

    .line 926
    :sswitch_15
    if-eqz v2, :cond_1f

    .line 927
    const v6, 0x7f090180

    .line 928
    const/4 v4, 0x1

    .line 930
    :cond_1f
    const/16 v9, 0x1e7

    .line 931
    goto/16 :goto_1

    .line 934
    :sswitch_16
    if-eqz v2, :cond_20

    .line 935
    if-eqz v0, :cond_21

    .line 936
    const v6, 0x7f090181

    .line 937
    const/4 v4, 0x2

    .line 943
    :cond_20
    :goto_b
    const/16 v9, 0x1e8

    .line 944
    goto/16 :goto_1

    .line 939
    :cond_21
    const v6, 0x7f090182

    .line 940
    const/4 v4, 0x4

    goto :goto_b

    .line 947
    :sswitch_17
    if-eqz v2, :cond_22

    .line 948
    if-eqz v0, :cond_23

    .line 949
    const v6, 0x7f090185

    .line 950
    const/4 v4, 0x2

    .line 956
    :cond_22
    :goto_c
    const/16 v9, 0x1f3

    .line 957
    goto/16 :goto_1

    .line 952
    :cond_23
    const v6, 0x7f090186

    .line 953
    const/4 v4, 0x4

    goto :goto_c

    .line 960
    :sswitch_18
    if-eqz v2, :cond_24

    .line 961
    if-eqz v0, :cond_25

    .line 962
    const v6, 0x7f090188

    .line 963
    const/4 v4, 0x2

    .line 969
    :cond_24
    :goto_d
    const/16 v9, 0x1f4

    .line 970
    goto/16 :goto_1

    .line 965
    :cond_25
    const v6, 0x7f090189

    .line 966
    const/4 v4, 0x4

    goto :goto_d

    .line 973
    :sswitch_19
    if-eqz v2, :cond_26

    .line 974
    if-eqz v0, :cond_27

    .line 975
    const v6, 0x7f09018c

    .line 976
    const/4 v4, 0x2

    .line 982
    :cond_26
    :goto_e
    const/16 v9, 0x1f7

    .line 983
    goto/16 :goto_1

    .line 978
    :cond_27
    const v6, 0x7f09018d

    .line 979
    const/4 v4, 0x4

    goto :goto_e

    .line 986
    :sswitch_1a
    if-eqz v2, :cond_28

    .line 987
    if-eqz v0, :cond_29

    .line 988
    const v6, 0x7f090190

    .line 989
    const/4 v4, 0x2

    .line 995
    :cond_28
    :goto_f
    const/16 v9, 0x1f8

    .line 996
    goto/16 :goto_1

    .line 991
    :cond_29
    const v6, 0x7f090191

    .line 992
    const/4 v4, 0x4

    goto :goto_f

    .line 999
    :sswitch_1b
    if-eqz v2, :cond_2a

    .line 1000
    const v6, 0x7f090194

    .line 1001
    const/4 v4, 0x1

    .line 1003
    :cond_2a
    const/16 v9, 0x25b

    .line 1004
    goto/16 :goto_1

    .line 1007
    :sswitch_1c
    if-eqz v2, :cond_2b

    .line 1008
    if-eqz v0, :cond_2c

    .line 1009
    const v6, 0x7f090195

    .line 1010
    const/4 v4, 0x2

    .line 1016
    :cond_2b
    :goto_10
    const/16 v9, 0x25c

    .line 1017
    goto/16 :goto_1

    .line 1012
    :cond_2c
    const v6, 0x7f090196

    .line 1013
    const/4 v4, 0x4

    goto :goto_10

    .line 1020
    :sswitch_1d
    if-eqz v2, :cond_2d

    .line 1021
    if-eqz v0, :cond_2e

    .line 1022
    const v6, 0x7f090197

    .line 1023
    const/4 v4, 0x2

    .line 1029
    :cond_2d
    :goto_11
    const/16 v9, 0x25e

    .line 1030
    goto/16 :goto_1

    .line 1025
    :cond_2e
    const v6, 0x7f090198

    .line 1026
    const/4 v4, 0x4

    goto :goto_11

    .line 711
    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x195 -> :sswitch_c
        0x196 -> :sswitch_d
        0x198 -> :sswitch_e
        0x19f -> :sswitch_f
        0x1a0 -> :sswitch_10
        0x1a4 -> :sswitch_11
        0x1e0 -> :sswitch_12
        0x1e4 -> :sswitch_13
        0x1e6 -> :sswitch_14
        0x1e7 -> :sswitch_15
        0x1e8 -> :sswitch_16
        0x1f4 -> :sswitch_18
        0x1f7 -> :sswitch_19
        0x1f8 -> :sswitch_1a
        0x25b -> :sswitch_1b
        0x25c -> :sswitch_1c
        0x25e -> :sswitch_1d
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x836 -> :sswitch_17
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v13, -0x1

    .line 56
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v7, "retBundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 62
    .local v10, "toVoLTE":Z
    const/4 v8, 0x1

    .line 63
    .local v8, "showEndScreen":Z
    const/4 v4, 0x0

    .line 65
    .local v4, "noti_type":I
    const-string v3, ""

    .line 66
    .local v3, "message":Ljava/lang/String;
    const/4 v6, -0x1

    .line 67
    .local v6, "resId":I
    const/4 v9, -0x1

    .line 68
    .local v9, "sip_error":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    invoke-static {v11, v12, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4

    .line 69
    .local v0, "autoDivertSettings":Z
    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 71
    .local v2, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 350
    :cond_0
    :goto_1
    if-eq v6, v13, :cond_1

    .line 351
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 352
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 354
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    if-eq v9, v13, :cond_2

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "number":Ljava/lang/String;
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 383
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIP_ERROR EVENT ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 384
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 385
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 386
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 387
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 388
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 389
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 394
    :cond_3
    return-object v7

    .line 68
    .end local v0    # "autoDivertSettings":Z
    .end local v2    # "isVideoCall":Z
    .end local v5    # "number":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 73
    .restart local v0    # "autoDivertSettings":Z
    .restart local v2    # "isVideoCall":Z
    :sswitch_0
    if-eqz v2, :cond_5

    .line 74
    const v6, 0x7f09019a

    .line 75
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 77
    :cond_5
    const v6, 0x7f0901bc

    .line 78
    const/4 v4, 0x1

    .line 80
    goto/16 :goto_1

    .line 83
    :sswitch_1
    if-eqz v2, :cond_6

    .line 84
    const v6, 0x7f090326

    .line 85
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 87
    :cond_6
    const v6, 0x7f09019e

    .line 88
    const/4 v4, 0x1

    .line 90
    goto/16 :goto_1

    .line 93
    :sswitch_2
    if-eqz v2, :cond_8

    .line 94
    if-eqz v0, :cond_7

    .line 95
    const v6, 0x7f090148

    .line 96
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 98
    :cond_7
    const v6, 0x7f090149

    .line 99
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 102
    :cond_8
    const/4 v4, 0x5

    .line 104
    goto/16 :goto_1

    .line 107
    :sswitch_3
    if-eqz v2, :cond_9

    .line 108
    const v6, 0x7f090156

    .line 109
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 111
    :cond_9
    const v6, 0x7f09019f

    .line 112
    const/4 v4, 0x1

    .line 114
    goto/16 :goto_1

    .line 117
    :sswitch_4
    if-eqz v2, :cond_a

    .line 118
    const v6, 0x7f090144

    .line 119
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 121
    :cond_a
    const v6, 0x7f09019b

    .line 122
    const/4 v4, 0x1

    .line 124
    goto/16 :goto_1

    .line 127
    :sswitch_5
    if-eqz v2, :cond_b

    .line 128
    if-eqz v0, :cond_c

    .line 129
    const v6, 0x7f090158

    .line 130
    const/4 v4, 0x2

    .line 139
    :cond_b
    :goto_2
    const/16 v9, 0x17c

    .line 140
    goto/16 :goto_1

    .line 132
    :cond_c
    const v6, 0x7f090157

    .line 133
    const/4 v4, 0x4

    goto :goto_2

    .line 143
    :sswitch_6
    const/16 v9, 0x193

    .line 144
    goto/16 :goto_1

    .line 147
    :sswitch_7
    if-eqz v2, :cond_e

    .line 148
    if-eqz v0, :cond_d

    .line 149
    const v6, 0x7f090166

    .line 150
    const/4 v4, 0x2

    .line 159
    :goto_3
    const/16 v9, 0x194

    .line 160
    goto/16 :goto_1

    .line 152
    :cond_d
    const v6, 0x7f090165

    .line 153
    const/4 v4, 0x4

    goto :goto_3

    .line 156
    :cond_e
    const v6, 0x7f0901aa

    .line 157
    const/4 v4, 0x2

    goto :goto_3

    .line 163
    :sswitch_8
    if-eqz v2, :cond_f

    .line 164
    const v6, 0x7f09016b

    .line 165
    const/4 v4, 0x1

    .line 170
    :goto_4
    const/16 v9, 0x198

    .line 171
    goto/16 :goto_1

    .line 167
    :cond_f
    const v6, 0x7f0901ab

    .line 168
    const/4 v4, 0x1

    goto :goto_4

    .line 174
    :sswitch_9
    if-eqz v2, :cond_11

    .line 175
    if-eqz v0, :cond_10

    .line 176
    const v6, 0x7f09016e

    .line 177
    const/4 v4, 0x2

    .line 186
    :goto_5
    const/16 v9, 0x19f

    .line 187
    goto/16 :goto_1

    .line 179
    :cond_10
    const v6, 0x7f09016d

    .line 180
    const/4 v4, 0x4

    goto :goto_5

    .line 183
    :cond_11
    const v6, 0x7f0901ac

    .line 184
    const/4 v4, 0x2

    goto :goto_5

    .line 190
    :sswitch_a
    if-eqz v2, :cond_13

    .line 191
    if-eqz v0, :cond_12

    .line 192
    const v6, 0x7f090179

    .line 193
    const/4 v4, 0x2

    .line 202
    :goto_6
    const/16 v9, 0x1e0

    .line 203
    goto/16 :goto_1

    .line 195
    :cond_12
    const v6, 0x7f090178

    .line 196
    const/4 v4, 0x4

    goto :goto_6

    .line 199
    :cond_13
    const v6, 0x7f0904f8

    .line 200
    const/4 v4, 0x2

    goto :goto_6

    .line 206
    :sswitch_b
    if-eqz v2, :cond_14

    .line 207
    const v6, 0x7f09017c

    .line 208
    const/4 v4, 0x1

    .line 213
    :goto_7
    const/16 v9, 0x1e4

    .line 214
    goto/16 :goto_1

    .line 210
    :cond_14
    const v6, 0x7f0901b2

    .line 211
    const/4 v4, 0x1

    goto :goto_7

    .line 217
    :sswitch_c
    if-eqz v2, :cond_15

    .line 218
    const v6, 0x7f09017d

    .line 219
    const/4 v4, 0x1

    .line 224
    :goto_8
    const/16 v9, 0x1e6

    .line 225
    goto/16 :goto_1

    .line 221
    :cond_15
    const v6, 0x7f0901b3

    .line 222
    const/4 v4, 0x1

    goto :goto_8

    .line 228
    :sswitch_d
    const/16 v9, 0x1e7

    .line 229
    goto/16 :goto_1

    .line 232
    :sswitch_e
    if-eqz v2, :cond_17

    .line 233
    if-eqz v0, :cond_16

    .line 234
    const v6, 0x7f090184

    .line 235
    const/4 v4, 0x2

    .line 244
    :goto_9
    const/16 v9, 0x1f3

    .line 245
    goto/16 :goto_1

    .line 237
    :cond_16
    const v6, 0x7f090183

    .line 238
    const/4 v4, 0x4

    goto :goto_9

    .line 241
    :cond_17
    const v6, 0x7f0901b4

    .line 242
    const/4 v4, 0x2

    goto :goto_9

    .line 248
    :sswitch_f
    if-eqz v2, :cond_18

    .line 249
    const v6, 0x7f090187

    .line 250
    const/4 v4, 0x1

    .line 255
    :goto_a
    const/16 v9, 0x1f4

    .line 256
    goto/16 :goto_1

    .line 252
    :cond_18
    const v6, 0x7f0901b5

    .line 253
    const/4 v4, 0x2

    goto :goto_a

    .line 259
    :sswitch_10
    if-eqz v2, :cond_19

    .line 260
    const v6, 0x7f09018b

    .line 261
    const/4 v4, 0x1

    .line 263
    :cond_19
    const/16 v9, 0x1f7

    .line 264
    goto/16 :goto_1

    .line 267
    :sswitch_11
    if-eqz v2, :cond_1a

    .line 268
    const v6, 0x7f09018f

    .line 269
    const/4 v4, 0x1

    .line 271
    :cond_1a
    const/16 v9, 0x1f8

    .line 272
    goto/16 :goto_1

    .line 275
    :sswitch_12
    if-eqz v2, :cond_1b

    .line 276
    const v6, 0x7f090193

    .line 277
    const/4 v4, 0x1

    .line 282
    :goto_b
    const/16 v9, 0x25b

    .line 283
    goto/16 :goto_1

    .line 279
    :cond_1b
    const v6, 0x7f0901bb

    .line 280
    const/4 v4, 0x1

    goto :goto_b

    .line 286
    :sswitch_13
    if-eqz v2, :cond_1d

    .line 287
    if-eqz v0, :cond_1c

    .line 288
    const v6, 0x7f090330

    .line 289
    const/4 v4, 0x2

    .line 298
    :goto_c
    const/16 v9, 0x25e

    .line 299
    goto/16 :goto_1

    .line 291
    :cond_1c
    const v6, 0x7f09032f

    .line 292
    const/4 v4, 0x4

    goto :goto_c

    .line 295
    :cond_1d
    const v6, 0x7f0904f9

    .line 296
    const/4 v4, 0x2

    goto :goto_c

    .line 301
    :sswitch_14
    if-eqz v2, :cond_0

    .line 302
    if-eqz v0, :cond_1e

    .line 303
    const v6, 0x7f090153

    .line 304
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 306
    :cond_1e
    const v6, 0x7f090155

    .line 307
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 312
    :sswitch_15
    if-eqz v2, :cond_0

    .line 313
    if-eqz v0, :cond_1f

    .line 314
    const v6, 0x7f090153

    .line 315
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 317
    :cond_1f
    const v6, 0x7f090155

    .line 318
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 323
    :sswitch_16
    if-eqz v2, :cond_0

    .line 324
    if-eqz v0, :cond_20

    .line 325
    const v6, 0x7f090153

    .line 326
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 328
    :cond_20
    const v6, 0x7f090155

    .line 329
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 334
    :sswitch_17
    if-eqz v2, :cond_0

    .line 335
    if-eqz v0, :cond_21

    .line 336
    const v6, 0x7f090153

    .line 337
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 339
    :cond_21
    const v6, 0x7f090155

    .line 340
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_TMO(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 1145
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1146
    .local v6, "retBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1147
    .local v9, "toVoLTE":Z
    const/4 v7, 0x0

    .line 1148
    .local v7, "showEndScreen":Z
    const/4 v3, 0x0

    .line 1150
    .local v3, "noti_type":I
    const-string v2, ""

    .line 1151
    .local v2, "message":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1152
    .local v5, "resId":I
    const/4 v8, 0x0

    .line 1153
    .local v8, "sip_error":I
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1155
    .local v1, "isVideoCall":Z
    packed-switch p1, :pswitch_data_0

    .line 1165
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 1166
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1167
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1170
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "number":Ljava/lang/String;
    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1173
    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1177
    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1181
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1190
    :cond_1
    return-object v6

    .line 1157
    .end local v4    # "number":Ljava/lang/String;
    :pswitch_0
    const/4 v3, 0x3

    .line 1158
    const v5, 0x7f0904e1

    .line 1159
    goto/16 :goto_0

    .line 1155
    nop

    :pswitch_data_0
    .packed-switch 0x96d
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "errorCode"    # I

    .prologue
    .line 1281
    const-string v10, "getDisconnectCauseAction_VZW"

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1282
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1283
    .local v6, "retBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1284
    .local v9, "toVoLTE":Z
    const/4 v7, 0x0

    .line 1285
    .local v7, "showEndScreen":Z
    const/4 v3, 0x0

    .line 1287
    .local v3, "noti_type":I
    const-string v2, ""

    .line 1288
    .local v2, "message":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1289
    .local v5, "resId":I
    const/4 v8, 0x0

    .line 1290
    .local v8, "sip_error":I
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1292
    .local v1, "isVideoCall":Z
    sparse-switch p1, :sswitch_data_0

    .line 1305
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 1306
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1307
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1308
    const v10, 0x7f090125

    if-ne v5, v10, :cond_0

    .line 1309
    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1310
    const v10, 0x7f090126

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1314
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "number":Ljava/lang/String;
    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1317
    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1318
    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1321
    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1328
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1334
    :cond_1
    return-object v6

    .line 1294
    .end local v4    # "number":Ljava/lang/String;
    :sswitch_0
    const/4 v3, 0x1

    .line 1295
    const v5, 0x7f09008e

    .line 1296
    goto/16 :goto_0

    .line 1298
    :sswitch_1
    const/4 v3, 0x1

    .line 1299
    const v5, 0x7f090125

    .line 1300
    goto/16 :goto_0

    .line 1292
    :sswitch_data_0
    .sparse-switch
        0x9ca -> :sswitch_0
        0x9ce -> :sswitch_1
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 3
    .param p0, "sip_error"    # I

    .prologue
    .line 1387
    const-string v0, ""

    .line 1388
    .local v0, "error":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    :cond_0
    return-object v0
.end method

.method public static getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 13
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1394
    const-string v11, "getPSBaringAction"

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1395
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1396
    .local v7, "retBundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 1397
    .local v10, "toVoLTE":Z
    const/4 v8, 0x1

    .line 1398
    .local v8, "showEndScreen":Z
    const/4 v4, 0x0

    .line 1400
    .local v4, "noti_type":I
    const-string v3, ""

    .line 1401
    .local v3, "message":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1402
    .local v6, "resId":I
    const/4 v9, 0x0

    .line 1403
    .local v9, "sip_error":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    invoke-static {v11, v12, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4

    .line 1404
    .local v0, "autoDivertSettings":Z
    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 1406
    .local v2, "isVideoCall":Z
    if-eqz v2, :cond_7

    .line 1407
    const-string v11, "dcm_volte_popup_message"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1408
    const v6, 0x7f0900f2

    .line 1409
    const/4 v4, 0x3

    .line 1425
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    .line 1426
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 1427
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1429
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 1430
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1432
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1434
    .local v5, "number":Ljava/lang/String;
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1435
    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1440
    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1441
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1442
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1443
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1444
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1446
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1447
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1450
    :cond_3
    return-object v7

    .line 1403
    .end local v0    # "autoDivertSettings":Z
    .end local v2    # "isVideoCall":Z
    .end local v5    # "number":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1411
    .restart local v0    # "autoDivertSettings":Z
    .restart local v2    # "isVideoCall":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 1412
    const v6, 0x7f090158

    .line 1413
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1415
    :cond_6
    const v6, 0x7f090157

    .line 1416
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 1420
    :cond_7
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1421
    const/4 v4, 0x5

    goto/16 :goto_1
.end method

.method public static getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 5
    .param p0, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1906
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "reason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIPErrorFromDisconnectCause reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1908
    const-string v2, "0"

    .line 1909
    .local v2, "sip_error":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1910
    const-string v3, "\\, "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, "result":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1912
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->translateDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 1913
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 1917
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private static getSIPErrorString(I)Ljava/lang/String;
    .locals 3
    .param p0, "sip_error"    # I

    .prologue
    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, "errorString":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1902
    :goto_0
    return-object v0

    .line 1799
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_SESSION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    goto :goto_0

    .line 1802
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1803
    goto :goto_0

    .line 1805
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1806
    goto :goto_0

    .line 1808
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RTP_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    goto :goto_0

    .line 1811
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DATA_CONNECTION_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1812
    goto :goto_0

    .line 1814
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ALTERNATIVE_SERVICES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1815
    goto :goto_0

    .line 1817
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_FORBIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    goto/16 :goto_0

    .line 1820
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1821
    goto/16 :goto_0

    .line 1823
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "METHOD_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1824
    goto/16 :goto_0

    .line 1826
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1827
    goto/16 :goto_0

    .line 1829
    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    goto/16 :goto_0

    .line 1832
    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_MEDIA_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1833
    goto/16 :goto_0

    .line 1835
    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_URI_SCHEME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1836
    goto/16 :goto_0

    .line 1838
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BAD_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    goto/16 :goto_0

    .line 1841
    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    goto/16 :goto_0

    .line 1844
    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1845
    goto/16 :goto_0

    .line 1847
    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1848
    goto/16 :goto_0

    .line 1850
    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADDRESS_INCOMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1851
    goto/16 :goto_0

    .line 1853
    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BUSY_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    goto/16 :goto_0

    .line 1856
    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TERMINATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1857
    goto/16 :goto_0

    .line 1859
    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1860
    goto/16 :goto_0

    .line 1862
    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NETWORK_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1863
    goto/16 :goto_0

    .line 1865
    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_INTERNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1866
    goto/16 :goto_0

    .line 1868
    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1869
    goto/16 :goto_0

    .line 1871
    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    goto/16 :goto_0

    .line 1874
    :sswitch_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DECLINE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1875
    goto/16 :goto_0

    .line 1877
    :sswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DOES_NOT_EXIST_ANYWHERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    goto/16 :goto_0

    .line 1880
    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    goto/16 :goto_0

    .line 1883
    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_NOT_ACCEPTABLE_DIVERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1884
    goto/16 :goto_0

    .line 1886
    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_TIMER_F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1887
    goto/16 :goto_0

    .line 1889
    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1890
    goto/16 :goto_0

    .line 1892
    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_423"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    goto/16 :goto_0

    .line 1896
    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LINE_IN_USE_ON_OTHER_DEVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1897
    goto/16 :goto_0

    .line 1899
    :sswitch_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_GENERAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1797
    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x195 -> :sswitch_8
        0x196 -> :sswitch_9
        0x198 -> :sswitch_a
        0x19f -> :sswitch_b
        0x1a0 -> :sswitch_c
        0x1a4 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1e8 -> :sswitch_14
        0x1f4 -> :sswitch_16
        0x1f7 -> :sswitch_17
        0x1f8 -> :sswitch_18
        0x25b -> :sswitch_19
        0x25c -> :sswitch_1a
        0x25e -> :sswitch_1b
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1d
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1f
        0x7d5 -> :sswitch_21
        0x835 -> :sswitch_1c
        0x836 -> :sswitch_15
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x96d -> :sswitch_20
    .end sparse-switch
.end method

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1921
    .line 1923
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 1922
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/wrapper/DisconnectCauseWrapper;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    .line 1924
    .local v0, "telephonyDisconnectCause":I
    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 1928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1929
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, "reasons":[Ljava/lang/String;
    array-length v1, v0

    .line 1931
    .local v1, "reasonsLength":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object p0, v0, v2

    .line 1933
    .end local v0    # "reasons":[Ljava/lang/String;
    .end local v1    # "reasonsLength":I
    .end local p0    # "reason":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static handleCallFailError(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallFailError "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1509
    if-eqz p0, :cond_0

    .line 1510
    const-string v5, "noti_type"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1511
    .local v2, "noty_type":I
    const-string v5, "message"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1512
    .local v1, "message":Ljava/lang/String;
    const-string v5, "number"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1513
    .local v3, "number":Ljava/lang/String;
    const-string v5, "toVoLTE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1514
    .local v4, "toVoLTE":Z
    const-string v5, "errorCode"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1516
    .local v0, "errorCode":I
    packed-switch v2, :pswitch_data_0

    .line 1546
    .end local v0    # "errorCode":I
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "noty_type":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "toVoLTE":Z
    :cond_0
    :goto_0
    return-void

    .line 1518
    .restart local v0    # "errorCode":I
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "noty_type":I
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "toVoLTE":Z
    :pswitch_0
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1521
    :pswitch_1
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1524
    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    .line 1525
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 1526
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/incallui/util/AudioUtils;->setAudioMode(I)V

    .line 1528
    :cond_3
    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1531
    :pswitch_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    :pswitch_3
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1537
    :cond_5
    invoke-static {v1, v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1540
    :pswitch_4
    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1543
    :pswitch_5
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog_WiFi(Ljava/lang/String;)V

    goto :goto_0

    .line 1516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static handleDisconnectCause(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDisconnectCause call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1464
    if-nez p0, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return v3

    .line 1465
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 1466
    .local v1, "cause":Landroid/telecom/DisconnectCause;
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    .line 1467
    .local v2, "sipError":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDisconnectCause sipError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    .line 1468
    const/4 v0, 0x0

    .line 1469
    .local v0, "actionBundle":Landroid/os/Bundle;
    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1470
    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->isPSBarringEventReceived()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1471
    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v0

    .line 1472
    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    .line 1494
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1495
    invoke-static {v0}, Lcom/android/incallui/util/IMSErrorUtils;->handleCallFailError(Landroid/os/Bundle;)V

    .line 1499
    :cond_3
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1500
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1501
    invoke-static {p0, v0}, Lcom/android/incallui/util/IMSErrorUtils;->handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z

    move-result v3

    goto :goto_0

    .line 1473
    :cond_4
    if-lez v2, :cond_2

    .line 1474
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "feature_kor_open"

    .line 1475
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1476
    :cond_5
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1477
    :cond_6
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1478
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1479
    :cond_7
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1480
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1481
    :cond_8
    const-string v4, "handle_sip_error_code_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1482
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1483
    :cond_9
    const-string v4, "jansky_info_for_tmo"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1484
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_TMO(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1485
    :cond_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCellC()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1486
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_CellC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1487
    :cond_b
    const-string v4, "feature_att"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1488
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1489
    :cond_c
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1490
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1549
    if-eqz p1, :cond_0

    .line 1550
    const-string v3, "noti_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1551
    .local v0, "noti_type":I
    packed-switch v0, :pswitch_data_0

    .line 1560
    .end local v0    # "noti_type":I
    :cond_0
    if-eqz p0, :cond_1

    .line 1561
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v1

    .line 1562
    .local v1, "telephonyDisconnectCause":I
    sparse-switch v1, :sswitch_data_0

    .line 1574
    .end local v1    # "telephonyDisconnectCause":I
    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1556
    .restart local v0    # "noti_type":I
    :pswitch_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : noti_type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1570
    .end local v0    # "noti_type":I
    .restart local v1    # "telephonyDisconnectCause":I
    :sswitch_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : DisconnectCause("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1562
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2b -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPSBarringEventReceived()Z
    .locals 1

    .prologue
    .line 1459
    sget-boolean v0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1937
    const-string v0, "SECVT-IMSErrorUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-void
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 1455
    sput-boolean p0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    .line 1456
    return-void
.end method

.method public static showIMSErrorDialog(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1661
    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1664
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1665
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1667
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1674
    const-string v2, "SECVT-IMSErrorUtils"

    const-string v3, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    return-void
.end method

.method public static showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "toVoLTE"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 1626
    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog_Divert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1629
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1630
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const-string v2, "number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    const-string v2, "to_volte"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1633
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1634
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19f

    if-ne p3, v2, :cond_0

    .line 1635
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1637
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1644
    const-string v2, "SECVT-IMSErrorUtils"

    const-string v3, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return-void
.end method

.method public static showIMSErrorDialog_WiFi(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1649
    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog_WiFi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 1652
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1653
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1654
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1655
    const-string v2, "wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1657
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1658
    return-void
.end method

.method public static showIMSErrorToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1578
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 1579
    return-void
.end method

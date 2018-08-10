.class public Lcom/android/systemui/statusbar/policy/WifiCallingDBController;
.super Ljava/lang/Object;
.source "WifiCallingDBController.java"


# static fields
.field public static final CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

.field public static final CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

.field private static sVoWifiEnabledState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "vowifisetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "vowifisetting2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.sec.unifiedwfc.wfcprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "wfc_fw_support"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentPhoneID(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getVoWifiEnableState(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getCurrentPhoneID(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 16

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    move/from16 v7, p2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "wifi_call_enable"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v14, p2

    move/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    :cond_1
    const-string/jumbo v1, "WifiCallingDBController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInt() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", sVoWifiEnabledState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    if-nez v14, :cond_5

    if-nez v15, :cond_5

    const/4 v7, 0x0

    :cond_2
    :goto_0
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v13, 0x0

    :cond_4
    return v7

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    :try_start_1
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    move v7, v14

    goto :goto_0

    :cond_7
    sget v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v7, v15

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "launch_state"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_WFCLAUNCHSTATE_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_0

    :cond_9
    if-nez p3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_2

    :cond_b
    move/from16 v7, p2

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_c
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_d
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_e
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v11

    :try_start_5
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_f
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_10

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_10
    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_11
    throw v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    move-object v6, p2

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v11, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "WifiCallingDBController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getString() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v11, 0x0

    :cond_0
    return-object v6

    :cond_1
    move-object v6, p2

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_3
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_2
    throw v0
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getCurrentPhoneID(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "wifi_call_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const-string/jumbo v4, "wifi_call_when_roaming"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void

    :cond_1
    :try_start_1
    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget v4, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->sVoWifiEnabledState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

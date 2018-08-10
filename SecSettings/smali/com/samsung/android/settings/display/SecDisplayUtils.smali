.class public Lcom/samsung/android/settings/display/SecDisplayUtils;
.super Ljava/lang/Object;
.source "SecDisplayUtils.java"


# static fields
.field public static final CRUISER_PROJECT:Z

.field public static final DREAM2_PROJECT:Z

.field public static mListPocImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "dream2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SC-03J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SCV35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "SCREEN_BRIGHTNESS_MODE"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "isBackupBrightnessMode"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getCurrentSeekbarIndex(Landroid/content/Context;)I
    .locals 13

    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    const/4 v8, 0x3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v9, "3"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    :cond_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getCurrentSeekbarIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v10

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static getPocCurrentUser(Landroid/content/Context;)I
    .locals 13

    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v8

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v9, "0"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] get_poc_user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocCurrentUser : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_4
    const-string/jumbo v10, "SecDisplayUtils"

    const-string/jumbo v11, "[stpoc] Exception in getPocCurrentUser"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v10

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J
    .locals 10

    const-wide/32 v8, 0x668a0

    const-wide/16 v6, 0x2710

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] check poc state"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocFused()Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdnieFisrtUsed()Z

    move-result v0

    const-string/jumbo v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[stpoc] check poc state : 1.Fused-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", 2.Supported-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", 3.FirstUsed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : isPocDream1NA"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_0
    if-nez v2, :cond_2

    if-nez v0, :cond_1

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :cond_1
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 2 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :cond_3
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 1 or case 2 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6
.end method

.method public static getPocFactoryDefaultIndex(Landroid/content/Context;)I
    .locals 13

    const-string/jumbo v5, "/efs/FactoryApp/poc_info"

    const/4 v7, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v9, "0"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] get_poc_info : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    :cond_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    if-gt v7, v10, :cond_2

    const/4 v10, -0x1

    if-ge v7, v10, :cond_3

    :cond_2
    const/4 v7, 0x0

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex value correction : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v7

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_4
    const-string/jumbo v10, "SecDisplayUtils"

    const-string/jumbo v11, "[stpoc] Exception in getPocFactoryDefaultIndex"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v10

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static getPocImageFromArray(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPocUserIndexTemp(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_poc_index"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[stpoc] getPocUserIndexTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getStringFromFile(Ljava/lang/String;)I
    .locals 15

    const/16 v13, 0x80

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/16 v0, 0x80

    new-array v1, v13, [B

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_0

    aput-byte v12, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    :cond_1
    if-eqz v8, :cond_3

    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_2

    new-instance v6, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v6, v1, v13, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v8, :cond_4

    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    return v11

    :catch_0
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_4
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FileNotFoundException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v4

    :try_start_6
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NumberFormatException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    if-eqz v8, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_2
    throw v12

    :catch_7
    move-exception v5

    const-string/jumbo v13, "SecDisplayUtils"

    const-string/jumbo v14, "File Close error"

    invoke-static {v13, v14}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getUserPocValue(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v2

    rsub-int/lit8 v1, v3, 0x5

    const/4 v0, 0x0

    if-ge v2, v4, :cond_2

    rsub-int/lit8 v4, v2, 0x3

    sub-int v0, v1, v4

    :goto_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x6

    if-le v0, v4, :cond_1

    const/4 v0, 0x6

    :cond_1
    rsub-int/lit8 v4, v0, 0x5

    return v4

    :cond_2
    if-le v2, v4, :cond_3

    add-int/lit8 v4, v2, -0x3

    add-int v0, v1, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static initPocImageArray(Landroid/content/Context;Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x6

    const/4 v8, 0x7

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocCurrentUser(Landroid/content/Context;)I

    move-result v5

    rsub-int/lit8 v4, v5, 0x5

    const-string/jumbo v5, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[stpoc] pocFactoryIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[stpoc] pocUserIndexConvert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    const-string/jumbo v5, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[stpoc] initPocImageArray for Cruiser : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    if-eqz v5, :cond_5

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SecDisplayUtils"

    const-string/jumbo v6, "[stpoc] initPocImageArray for Cruiser Case1,2"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v8, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v0, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    aput-object v5, v0, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x2

    aput-object v5, v0, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_3

    aput-object v5, v0, v11

    new-array v5, v8, [I

    fill-array-data v5, :array_4

    aput-object v5, v0, v12

    new-array v5, v8, [I

    fill-array-data v5, :array_5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_6

    aput-object v5, v0, v9

    move-object v1, v0

    :goto_1
    if-lt v4, v10, :cond_1

    if-le v4, v9, :cond_6

    :cond_1
    const-string/jumbo v5, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[stpoc] error initPocImageArray for Case 3 : pocUserIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocDream1NA()Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "SecDisplayUtils"

    const-string/jumbo v6, "[stpoc] initPocImageArray for D2 case"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v10, :cond_7

    packed-switch v3, :pswitch_data_0

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080559

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "SecDisplayUtils"

    const-string/jumbo v6, "[stpoc] initPocImageArray for Case 3"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v8, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_7

    const/4 v6, 0x0

    aput-object v5, v2, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_8

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_9

    const/4 v6, 0x2

    aput-object v5, v2, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_a

    aput-object v5, v2, v11

    new-array v5, v8, [I

    fill-array-data v5, :array_b

    aput-object v5, v2, v12

    new-array v5, v8, [I

    fill-array-data v5, :array_c

    const/4 v6, 0x5

    aput-object v5, v2, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_d

    aput-object v5, v2, v9

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    packed-switch v3, :pswitch_data_1

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_0
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_5
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_6
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080556

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_7
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080556

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_8
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080555

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080556

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080559

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_9
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080556

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080559

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_a
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080557

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080559

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_b
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080558

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080559

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    packed-switch v3, :pswitch_data_2

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_c
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_d
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_e
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_f
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_10
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_11
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08055f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080560

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    if-ne v4, v11, :cond_9

    packed-switch v3, :pswitch_data_3

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080565

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_12
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080562

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_13
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080562

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_14
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080561

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080562

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080565

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_15
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080562

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080565

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_16
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080563

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080565

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_17
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080564

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080565

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080566

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    if-ne v4, v12, :cond_a

    packed-switch v3, :pswitch_data_4

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_18
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080568

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_19
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080568

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1a
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080567

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080568

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1b
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080568

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1c
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080569

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1d
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x5

    if-ne v4, v5, :cond_b

    packed-switch v3, :pswitch_data_5

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080571

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1e
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1f
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_20
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080571

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_21
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080571

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_22
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08056f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080571

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_23
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080570

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080571

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080572

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    if-ne v4, v9, :cond_2

    packed-switch v3, :pswitch_data_6

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080577

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_24
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080574

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_25
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080574

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_26
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080573

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080574

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080577

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_27
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080574

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080577

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_28
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080575

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080577

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_29
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080576

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080577

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080578

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v5, "SecDisplayUtils"

    const-string/jumbo v6, "[stpoc] initPocImageArray for D1 case"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v10, :cond_d

    packed-switch v3, :pswitch_data_7

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080535

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2a
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080532

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2b
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080532

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2c
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080531

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080532

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080535

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2d
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080532

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080535

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2e
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080533

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080535

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2f
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080534

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080535

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080536

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    packed-switch v3, :pswitch_data_8

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_30
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080538

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_31
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080538

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_32
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080537

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080538

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_33
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080538

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_34
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080539

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_35
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    if-ne v4, v11, :cond_f

    packed-switch v3, :pswitch_data_9

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080541

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_36
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_37
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_38
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080541

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_39
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080541

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3a
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08053f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080541

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3b
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080540

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080541

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080542

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    if-ne v4, v12, :cond_10

    packed-switch v3, :pswitch_data_a

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080547

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3c
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080544

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3d
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080544

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3e
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080543

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080544

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080547

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3f
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080544

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080547

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_40
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080545

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080547

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_41
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080546

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080547

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080548

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x5

    if-ne v4, v5, :cond_11

    packed-switch v3, :pswitch_data_b

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_42
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_43
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_44
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080549

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_45
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_46
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_47
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    if-ne v4, v9, :cond_2

    packed-switch v3, :pswitch_data_c

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080553

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_48
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080550

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_49
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080550

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4a
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f08054f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080550

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080553

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4b
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080550

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080553

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4c
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080551

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080553

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4d
    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080552

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080553

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v6, 0x7f080554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f0805b3
        0x7f0805b2
        0x7f0805b1
        0x7f0805b0
        0x7f0805af
        0x7f0805b4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7f0805ad
        0x7f0805ac
        0x7f0805ab
        0x7f0805aa
        0x7f0805a9
        0x7f0805ae
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x7f0805a7
        0x7f0805a6
        0x7f0805a5
        0x7f0805a4
        0x7f0805a3
        0x7f0805a8
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x7f0805a1
        0x7f0805a0
        0x7f08059f
        0x7f08059e
        0x7f08059d
        0x7f0805a2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x7f08059b
        0x7f08059a
        0x7f080599
        0x7f080598
        0x7f080597
        0x7f08059c
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x7f0805b9
        0x7f0805b8
        0x7f0805b7
        0x7f0805b6
        0x7f0805b5
        0x7f0805ba
    .end array-data

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x7f080595
        0x7f080594
        0x7f080593
        0x7f080592
        0x7f080591
        0x7f080596
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x7f08058f
        0x7f08058e
        0x7f08058d
        0x7f08058c
        0x7f08058b
        0x7f080590
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x7f080589
        0x7f080588
        0x7f080587
        0x7f080586
        0x7f080585
        0x7f08058a
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x7f080583
        0x7f080582
        0x7f080581
        0x7f080580
        0x7f08057f
        0x7f080584
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x7f08057d
        0x7f08057c
        0x7f08057b
        0x7f08057a
        0x7f080579
        0x7f08057e
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x7f0805bf
        0x7f0805be
        0x7f0805bd
        0x7f0805bc
        0x7f0805bb
        0x7f0805c0
    .end array-data

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_9
    .packed-switch -0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_b
    .packed-switch -0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch
.end method

.method public static isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocSupported()Z

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[stpoc] isMdniePocSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocDream1NA()Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v1

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNotSupportScreenMode(Z)Z
    .locals 6

    const/4 v5, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v0

    :goto_0
    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNotSupportScreenMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [condition] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPocDream1NA()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_GRAY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPocDream1NA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static isPocDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v4, "isPocDream2NA() : mdnie is null"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_DISABLE_POC_GRAY64"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    const-string/jumbo v2, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPocDream2NA() - GRAY64 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / bIsMdniePocSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPocDream2NA() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    xor-int/lit8 v2, v0, 0x1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    xor-int/lit8 v3, v0, 0x1

    :cond_1
    return v3

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static isSupportPocSettings(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_COMPENSATION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "isSupportPocSettings false by feature"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/policy/SCPMHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/policy/SCPMHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "edge_color_balance"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/policy/SCPMHelper;->isSupportedMenu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportPocSettings SCPMHelper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportPocketMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "isSupportPocketMode : false. cfmsService is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getPocketDetectionValue()Z

    move-result v1

    const-string/jumbo v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportPocketMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static removeEfsPocErrorOccurredOnBoot()V
    .locals 5

    const-string/jumbo v2, "/efs/etc/poc/failcount"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] removeEfsPocErrorOccurredOnBoot"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const-string/jumbo v4, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setPocUserIndexTemp(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_poc_index"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] setPocUserIndexTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V
    .locals 3

    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] start read poc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocSetting(I)Z

    return-void
.end method

.method public static stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .locals 2

    const-string/jumbo v0, "SecDisplayUtils"

    const-string/jumbo v1, "[stpoc] stop read poc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocCancel()Z

    return-void
.end method

.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field public static final MDM_PRIORITY:I = 0x0

.field public static final RAM_PRIORITY:I = 0x2

.field public static final SPD_PRIORITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .locals 16

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v0, v14

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v0, v14

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v13, v0, v14

    const/4 v13, 0x0

    const/4 v14, 0x3

    aput-object v13, v0, v14

    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    aget-object v14, v0, v12

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v12, :cond_5

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v6

    move-object v7, v8

    move-object v1, v2

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v7, 0x0

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    const/16 v13, 0x3d

    :try_start_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_4

    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13}, Ljava/lang/NumberFormatException;-><init>()V

    throw v13

    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "BD"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    :cond_5
    move-object v7, v8

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    move-object v7, v8

    goto :goto_0
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .locals 17

    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v14, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v13

    const/4 v14, 0x4

    new-array v0, v14, [Ljava/io/File;

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v14, v0, v15

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v14, v0, v15

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x2

    aput-object v14, v0, v15

    const/4 v14, 0x0

    const/4 v15, 0x3

    aput-object v14, v0, v15

    const-string/jumbo v14, "GOOGLE_POLICY"

    const-string/jumbo v15, "selinux.policy_version"

    const-string/jumbo v16, "Unknown"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "GOOGLE_POLICY"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15

    return-object v10

    :cond_0
    if-nez v13, :cond_4

    :try_start_0
    const-string/jumbo v14, "Enterprise Policy"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x0

    :cond_3
    :goto_1
    return-object v10

    :cond_4
    :try_start_2
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    aget-object v15, v0, v13

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    const-string/jumbo v14, "VE="

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x3d

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v14, v10, v15

    :cond_6
    const-string/jumbo v14, "BD="

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x3d

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v14, v10, v15

    :cond_7
    const/4 v14, 0x0

    aget-object v14, v10, v14

    if-nez v14, :cond_8

    const-string/jumbo v14, ""

    const/4 v15, 0x0

    aput-object v14, v10, v15

    :cond_8
    const/4 v14, 0x1

    aget-object v14, v10, v14

    if-nez v14, :cond_5

    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    move-object v7, v8

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_9
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v14, "Revision"

    const-string/jumbo v15, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v5

    goto :goto_3

    :catch_4
    move-exception v5

    move-object v7, v8

    goto :goto_3

    :cond_a
    move-object v7, v8

    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string/jumbo v13, "GOOGLE_POLICY"

    const-string/jumbo v14, "selinux.policy_version"

    const-string/jumbo v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/String;

    const-string/jumbo v14, "GOOGLE_POLICY"

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v13

    :cond_0
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v0, v14

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v0, v14

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v13, v0, v14

    const/4 v13, 0x0

    const/4 v14, 0x3

    aput-object v13, v0, v14

    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    aget-object v14, v0, v11

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v11, :cond_1

    :try_start_2
    new-instance v12, Ljava/lang/String;

    const-string/jumbo v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-eqz v2, :cond_7

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x0

    :goto_1
    if-eqz v8, :cond_6

    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v7, 0x0

    :goto_2
    return-object v12

    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v5

    move-object v7, v8

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v7, 0x0

    :cond_3
    :goto_4
    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    const/16 v13, 0x3d

    :try_start_7
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_5

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_5
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v1, v2

    :goto_5
    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_5

    :catch_4
    move-exception v5

    goto :goto_3

    :catch_5
    move-exception v5

    move-object v7, v8

    goto :goto_3

    :cond_6
    move-object v7, v8

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method public static selinux_android_load_priority()I
    .locals 24

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    new-instance v15, Ljava/lang/String;

    const-string/jumbo v21, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/String;

    const-string/jumbo v21, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v2, v0, [Ljava/io/File;

    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string/jumbo v23, "security/sepolicy"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v22, 0x0

    aput-object v21, v2, v22

    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string/jumbo v23, "security/spota/sepolicy_version"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v22, 0x1

    aput-object v21, v2, v22

    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/sepolicy_version"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2

    aput-object v21, v2, v22

    const/16 v21, 0x0

    const/16 v22, 0x3

    aput-object v21, v2, v22

    const-string/jumbo v21, "GOOGLE_POLICY"

    const-string/jumbo v22, "selinux.policy_version"

    const-string/jumbo v23, "Unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x2

    return v21

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_9

    cmp-long v21, v18, v16

    if-lez v21, :cond_1

    move-wide/from16 v16, v18

    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v15

    const/4 v14, 0x1

    :goto_0
    move-object v10, v11

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v10, 0x0

    :cond_3
    :goto_2
    move v8, v9

    :cond_4
    add-int/lit8 v9, v8, 0x1

    aget-object v21, v2, v8

    if-eqz v21, :cond_5

    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    aget-object v21, v2, v9

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v9, :cond_0

    :try_start_4
    const-string/jumbo v21, "persist.security.mdm.policy"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v21

    if-eqz v21, :cond_0

    const/4 v14, 0x0

    move-object v10, v11

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v10, 0x0

    :cond_7
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_8

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v21

    if-eqz v21, :cond_b

    const/4 v14, 0x1

    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return v14

    :cond_9
    :try_start_6
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    cmp-long v21, v18, v16

    if-lez v21, :cond_a

    const/4 v14, 0x1

    goto :goto_0

    :cond_a
    const/4 v14, 0x2

    move-object v10, v11

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception v7

    :goto_6
    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_7
    const-string/jumbo v21, "Revision"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "File not found at: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v2, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v6

    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v6

    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const/4 v14, 0x2

    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v5

    move-object v10, v11

    goto :goto_7

    :catch_5
    move-exception v5

    move-object v10, v11

    move-object v3, v4

    goto :goto_7

    :catch_6
    move-exception v7

    move-object v10, v11

    goto :goto_6

    :catch_7
    move-exception v7

    move-object v10, v11

    move-object v3, v4

    goto :goto_6
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static selinux_compare_spd_ram()I
    .locals 22

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    new-instance v13, Ljava/lang/String;

    const-string/jumbo v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    const-string/jumbo v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v19, v2, v20

    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    const-string/jumbo v21, "security/spota/sepolicy_version"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x1

    aput-object v19, v2, v20

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/sepolicy_version"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x2

    aput-object v19, v2, v20

    const/16 v19, 0x0

    const/16 v20, 0x3

    aput-object v19, v2, v20

    const-string/jumbo v19, "GOOGLE_POLICY"

    const-string/jumbo v20, "selinux.policy_version"

    const-string/jumbo v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x3

    return v19

    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    aget-object v19, v2, v8

    if-eqz v19, :cond_6

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    aget-object v19, v2, v8

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    cmp-long v19, v16, v14

    if-lez v19, :cond_1

    move-wide/from16 v14, v16

    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v13

    const/4 v12, 0x1

    :cond_2
    :goto_1
    move-object v9, v10

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_3
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    cmp-long v19, v16, v14

    if-lez v19, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    move-object v9, v10

    move-object v3, v4

    :cond_6
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v9, 0x0

    :cond_8
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_9

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_a

    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return v12

    :catch_0
    move-exception v7

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v6

    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const/4 v12, 0x2

    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v7

    move-object v9, v10

    goto :goto_5

    :catch_4
    move-exception v7

    move-object v9, v10

    move-object v3, v4

    goto :goto_5
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "Revision"

    const-string/jumbo v5, "selinux_get_full_version : Couldn\'t extract version name "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    return-object v4
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .locals 6

    move-object v3, p0

    const-wide/16 v0, 0x0

    const/16 v4, 0x5f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    return-wide v4
.end method

.class public Lcom/cmcc/sso/sdk/util/FileUtil;
.super Lcom/cmcc/sso/sdk/util/BaseFileUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;-><init>()V

    return-void
.end method

.method public static readFile(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/cmcc/sso/sdk/util/FileUtil;->isRemovedSDCard:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->readFileFromPhone(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/cmcc/sso/sdk/util/FileUtil;->getFileFromSDCard(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->readFileFromPhone(Ljava/lang/String;Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;I)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/cmcc/sso/sdk/util/FileUtil;->isRemovedSDCard:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToPhone(Ljava/lang/String;[BLandroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToSDCard(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToPhone(Ljava/lang/String;[BLandroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

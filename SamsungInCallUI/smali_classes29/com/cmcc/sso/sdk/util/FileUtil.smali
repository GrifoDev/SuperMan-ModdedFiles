.class public Lcom/cmcc/sso/sdk/util/FileUtil;
.super Lcom/cmcc/sso/sdk/util/BaseFileUtil;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;-><init>()V

    return-void
.end method

.method public static readFile(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    :try_start_0
    sget-boolean v2, Lcom/cmcc/sso/sdk/util/FileUtil;->isRemovedSDCard:Z

    if-eqz v2, :cond_1

    .line 85
    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->readFileFromPhone(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/cmcc/sso/sdk/util/FileUtil;->getFileFromSDCard(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    .local v0, "byteContent":[B
    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->readFileFromPhone(Ljava/lang/String;Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 93
    .end local v0    # "byteContent":[B
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;I)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "byteContent"    # [B
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mode"    # I

    .prologue
    .line 118
    :try_start_0
    sget-boolean v2, Lcom/cmcc/sso/sdk/util/FileUtil;->isRemovedSDCard:Z

    if-eqz v2, :cond_1

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToPhone(Ljava/lang/String;[BLandroid/content/Context;I)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {p0, p1}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToSDCard(Ljava/lang/String;[B)Z

    move-result v1

    .line 125
    .local v1, "isSuccess":Z
    if-nez v1, :cond_0

    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveToPhone(Ljava/lang/String;[BLandroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

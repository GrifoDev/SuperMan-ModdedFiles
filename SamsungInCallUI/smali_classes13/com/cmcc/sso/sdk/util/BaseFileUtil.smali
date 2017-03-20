.class public Lcom/cmcc/sso/sdk/util/BaseFileUtil;
.super Ljava/lang/Object;
.source "BaseFileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isRemovedSDCard:Z

.field public static sdCardPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/cmcc/sso/sdk/util/BaseFileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->isRemovedSDCard:Z

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.cmcc.sso"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->sdCardPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFileIfNeed(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "parentDictionary":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    .end local v0    # "parentDictionary":Ljava/io/File;
    .end local p0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object p0

    .line 79
    .restart local v0    # "parentDictionary":Ljava/io/File;
    .restart local p0    # "file":Ljava/io/File;
    :cond_2
    sget-object v1, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  create failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static deleteAll(Ljava/io/File;)V
    .locals 4
    .param p0, "needDeleteFile"    # Ljava/io/File;

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 123
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 123
    :cond_2
    aget-object v0, v1, v2

    .line 125
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->deleteAll(Ljava/io/File;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deletePhoneFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->deleteAll(Ljava/io/File;)V

    .line 99
    return-void
.end method

.method public static getFileFromSDCard(Ljava/lang/String;)[B
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->sdCardPath:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file not found [fileName]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    .line 152
    :goto_0
    return-object v2

    .line 151
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v1, "inStream":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->readStream(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public static readFileFromPhone(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin readFileFromPhone....."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 230
    .local v1, "inStream":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->readStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 234
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 45
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 46
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 52
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 48
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static saveToPhone(Ljava/lang/String;[BLandroid/content/Context;I)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "byteContent"    # [B
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin saveToPhone....."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->createFileIfNeed(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 208
    .local v1, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 210
    return-void
.end method

.method public static saveToSDCard(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin saveToSDCard....."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->sdCardPath:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->createFileIfNeed(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 174
    sget-object v2, Lcom/cmcc/sso/sdk/util/BaseFileUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file save to SDCard failed...."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    .line 182
    :goto_0
    return v2

    .line 179
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    .local v1, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 181
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 182
    const/4 v2, 0x1

    goto :goto_0
.end method

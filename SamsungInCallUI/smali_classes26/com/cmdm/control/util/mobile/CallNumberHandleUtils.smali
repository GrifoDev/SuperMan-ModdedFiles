.class public Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AREADATA:Ljava/lang/String; = "tel.bin"

.field public static final DATABASE_PATH:Ljava/lang/String;

.field public static final DEFAULTSHOW:Ljava/lang/String; = "default_show_small.jpg"

.field public static dianxin:Ljava/lang/String;

.field public static liantong:Ljava/lang/String;

.field public static yidong:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "133,153,180,181,189"

    sput-object v0, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->dianxin:Ljava/lang/String;

    .line 29
    const-string v0, "134,135,136,137,138,139,147,150,151,152,157,158,159,187,188,182,183"

    sput-object v0, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->yidong:Ljava/lang/String;

    .line 30
    const-string v0, "130,131,132,145,154,155,156,185,186"

    sput-object v0, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->liantong:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArea(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "databasePath"    # Ljava/lang/String;
    .param p3, "areadata"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 168
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "areafilename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 172
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 174
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x2000

    :try_start_1
    new-array v1, v9, [B

    .line 176
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 178
    .local v2, "count":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_4

    .line 181
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 184
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->getInstance()Lcom/cmdm/control/util/mobile/TelAreaUtil;

    move-result-object v9

    .line 185
    invoke-virtual {v9, p2, p1}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->searchTel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 190
    .local v8, "s":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 192
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 197
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 199
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 206
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v8

    .line 179
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v6, v1, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 187
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 188
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    if-eqz v5, :cond_5

    .line 192
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 197
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 199
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 206
    :cond_6
    :goto_5
    const/4 v8, 0x0

    goto :goto_2

    .line 193
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v8    # "s":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 194
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 202
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v8    # "s":Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 194
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 202
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 190
    :goto_6
    if-eqz v5, :cond_7

    .line 192
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 197
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 199
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 205
    :cond_8
    :goto_8
    throw v9

    .line 193
    :catch_5
    move-exception v4

    .line 194
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 202
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 187
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :catch_7
    move-exception v4

    goto :goto_3
.end method

.method public static getContactName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneNum"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {p1, p0}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getSelectList(Landroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v0

    .line 238
    .local v0, "mContactInfo":Lcom/cmdm/control/bean/ContactInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, v0, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object p0, v0, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 242
    .end local p0    # "phoneNum":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getContactsName(Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 4
    .param p0, "phoneNum"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v1, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v1}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    .line 211
    .local v1, "mContactInfo":Lcom/cmdm/control/bean/ContactInfo;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u672a\u77e5\u53f7\u7801"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    const-string v2, "\u672a\u77e5\u53f7\u7801"

    iput-object v2, v1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 214
    const-string v2, "\u672a\u77e5\u53f7\u7801"

    iput-object v2, v1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    .line 215
    iput-object v3, v1, Lcom/cmdm/control/bean/ContactInfo;->photoBit:Landroid/graphics/Bitmap;

    .line 233
    :goto_0
    return-object v1

    .line 219
    :cond_1
    :try_start_0
    const-string v2, "10086"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "10000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    const-string v2, "10010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    :cond_2
    iput-object p0, v1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 222
    iput-object p0, v1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    .line 223
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/cmdm/control/bean/ContactInfo;->photoBit:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->numberJudge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {p1, p0}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getSelectContractInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v1

    .line 227
    iput-object p0, v1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getDefaultShowUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    const/4 v7, 0x0

    .line 363
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 365
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    const-string v9, "default_show_small.jpg"

    invoke-static {v9}, Lcom/cmdm/control/util/client/Setting;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 365
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "areafilename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 369
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 370
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "default_show_small.jpg"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 372
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v1, v8, [B

    .line 374
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 376
    .local v2, "count":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_4

    .line 379
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 380
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 386
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v5, :cond_2

    .line 388
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 393
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 395
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 402
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :cond_3
    :goto_2
    return-object v0

    .line 377
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v1, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 383
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 384
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    if-eqz v5, :cond_5

    .line 388
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 393
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 395
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 402
    :cond_6
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 389
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 390
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 396
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 398
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 389
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 390
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 396
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 398
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 385
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 386
    :goto_6
    if-eqz v5, :cond_7

    .line 388
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 393
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 395
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 401
    :cond_8
    :goto_8
    throw v8

    .line 389
    :catch_5
    move-exception v4

    .line 390
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 396
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 398
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 385
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 383
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :catch_7
    move-exception v4

    goto :goto_3
.end method

.method public static getKeFu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "gushudiname":Ljava/lang/String;
    const-string v1, "10086"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8\u5ba2\u670d"

    .line 113
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v1, "10010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v0, "\u4e2d\u56fd\u8054\u901a\u5ba2\u670d"

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "10000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1\u5ba2\u670d"

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "\u672a\u77e5\u5f52\u5c5e\u5730"

    goto :goto_0
.end method

.method public static getNumberType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 128
    invoke-static {p0, p1}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getKeFu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    if-eqz p1, :cond_5

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "type_y":Ljava/lang/String;
    sget-object v2, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->dianxin:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string v1, "\u7535\u4fe1"

    .line 140
    :goto_1
    sget-object v2, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    const-string v3, "tel.bin"

    invoke-static {p0, p1, v2, v3}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getArea(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "areaName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e2d\u56fd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    .end local v0    # "areaName":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->liantong:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    const-string v1, "\u8054\u901a"

    goto :goto_1

    .line 135
    :cond_3
    sget-object v2, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->yidong:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const-string v1, "\u79fb\u52a8"

    goto :goto_1

    .line 138
    :cond_4
    const-string v1, ""

    goto :goto_1

    .line 146
    .end local v1    # "type_y":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public static getResPicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 418
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 418
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "areafilename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 422
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 423
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 425
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v1, v8, [B

    .line 427
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 429
    .local v2, "count":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_4

    .line 432
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 433
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 439
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v5, :cond_2

    .line 441
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 448
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 455
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :cond_3
    :goto_2
    return-object v0

    .line 430
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v1, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 436
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 437
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 439
    if-eqz v5, :cond_5

    .line 441
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 446
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 448
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 455
    :cond_6
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 442
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 443
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 451
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 442
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 443
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 449
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 451
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 438
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 439
    :goto_6
    if-eqz v5, :cond_7

    .line 441
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 446
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 448
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 454
    :cond_8
    :goto_8
    throw v8

    .line 442
    :catch_5
    move-exception v4

    .line 443
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 449
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 451
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 438
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "areafilename":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 436
    .end local v0    # "areafilename":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    :catch_7
    move-exception v4

    goto :goto_3
.end method

.method public static getSelectContractInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 255
    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    .line 256
    .local v8, "mContactInfo":Lcom/cmdm/control/bean/ContactInfo;
    const-string v3, ""

    .line 257
    .local v3, "seletion":Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " replace(replace(replace(replace(data1,\' \',\'\'),\'-\',\'\'),x\'28\',\'\'),x\'29\',\'\') like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    :goto_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 269
    const-string v0, "display_name"

    aput-object v0, v2, v10

    .line 270
    const-string v0, "contact_id"

    aput-object v0, v2, v11

    .line 271
    const-string v0, "photo_id"

    aput-object v0, v2, v12

    .line 276
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    .line 276
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 279
    .local v7, "intellCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 282
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 284
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 283
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 288
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    invoke-static {v0, v9}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 289
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->photoBit:Landroid/graphics/Bitmap;

    .line 293
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_1
    iget-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 297
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    :cond_2
    const-string v0, "\u964c\u751f\u53f7\u7801"

    iput-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 300
    :cond_3
    return-object v8

    .line 263
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "intellCursor":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " replace(replace(replace(replace(data1,\' \',\'\'),\'-\',\'\'),x\'28\',\'\'),x\'29\',\'\')= \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSelectList(Landroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 312
    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    .line 313
    .local v8, "mContactInfo":Lcom/cmdm/control/bean/ContactInfo;
    const-string v3, ""

    .line 314
    .local v3, "seletion":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " replace(replace(replace(replace(data1,\' \',\'\'),\'-\',\'\'),x\'28\',\'\'),x\'29\',\'\') like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    :goto_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 327
    const-string v0, "display_name"

    aput-object v0, v2, v10

    .line 328
    const-string v0, "contact_id"

    aput-object v0, v2, v11

    .line 329
    const-string v0, "photo_id"

    aput-object v0, v2, v12

    .line 334
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 335
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    .line 334
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 337
    .local v7, "intellCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 338
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 343
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 345
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 346
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 344
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 349
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    invoke-static {v0, v9}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 350
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/cmdm/control/bean/ContactInfo;->photoBit:Landroid/graphics/Bitmap;

    .line 356
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_1
    return-object v8

    .line 320
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "intellCursor":Landroid/database/Cursor;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " replace(replace(replace(replace(data1,\' \',\'\'),\'-\',\'\'),x\'28\',\'\'),x\'29\',\'\')= \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static numberHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const-string v0, ";"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 49
    const-string v0, "*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 50
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v0, "P"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v0, "W"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, "p"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "w"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static numberJudge(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0xb

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 70
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 71
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 75
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 79
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12593"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 83
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "17951"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    goto :goto_0
.end method

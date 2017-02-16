.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    }
.end annotation


# static fields
.field private static final ERROR_KEY:Ljava/lang/String; = "ERR_CODE"

.field private static final HIGH:I = 0x1

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FOLDER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final LOCK_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final NORMAL:I = 0x0

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUIRED_SIZE_KEY:Ljava/lang/String; = "REQ_SIZE"

.field private static final REQ_MINIMUM_SIZE:I = 0xa00000

.field private static final REQ_SUCCESS_SIZE:I = 0x0

.field private static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field private static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field private static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field private static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field private static final RESULT_FAIL:I = 0x1

.field private static final RESULT_KEY:Ljava/lang/String; = "RESULT"

.field private static final RESULT_OK:I = 0x0

.field private static final SESSION_TIME_KEY:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SOURCE_KEY:Ljava/lang/String; = "SOURCE"

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyBackupFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 532
    const-string/jumbo v6, "WallpaperBackupRestoreManager"

    const-string/jumbo v7, "copyBackupFile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 539
    :cond_0
    const/4 v5, 0x0

    .line 540
    .local v5, "success":Z
    const/4 v3, 0x0

    .line 542
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_3

    .line 544
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    const/4 v5, 0x1

    .line 553
    :goto_0
    if-eqz v4, :cond_1

    .line 554
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 561
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return v5

    .line 547
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    const-string/jumbo v6, "WallpaperBackupRestoreManager"

    const-string/jumbo v7, "out is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 550
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 553
    if-eqz v3, :cond_2

    .line 554
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 556
    :catch_1
    move-exception v1

    .line 557
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 556
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 557
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 551
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 553
    :goto_4
    if-eqz v3, :cond_4

    .line 554
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 551
    :cond_4
    :goto_5
    throw v6

    .line 556
    :catch_3
    move-exception v1

    .line 557
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 551
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 549
    .local v3, "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3
.end method

.method private createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "createBackupFile() which="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 204
    .local v6, "xmlFilePath":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne p2, v7, :cond_0

    .line 205
    const-string/jumbo v2, "wallpaper/wallpaper.png"

    .line 206
    .local v2, "path":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wallpaper.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "xmlFilePath":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "createBackupFile() xmlFilePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "imagePath":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p2, v2, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupWallpaperXmlFiles(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    .line 221
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 222
    .local v5, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 223
    .local v4, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 224
    invoke-direct {p0, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "wallpaperManager":Landroid/app/WallpaperManager;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_3

    .line 234
    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    const-string/jumbo v8, "bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v7, 0x0

    return v7

    .line 208
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imagePath":Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    .local v6, "xmlFilePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "wallpaper/lockscreen_wallpaper.jpg"

    .line 209
    .local v2, "path":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "lockscreen.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "xmlFilePath":Ljava/lang/String;
    goto :goto_0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "imagePath":Ljava/lang/String;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    const-string/jumbo v8, "wallpaperDrawable is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v7, 0x0

    return v7

    .line 230
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 238
    :cond_3
    const/4 v3, 0x0

    .line 239
    .local v3, "success":Z
    if-nez p4, :cond_5

    .line 240
    invoke-direct {p0, v1, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 245
    .end local v3    # "success":Z
    :cond_4
    :goto_2
    return v3

    .line 241
    .restart local v3    # "success":Z
    :cond_5
    const/4 v7, 0x1

    if-ne p4, v7, :cond_4

    .line 242
    invoke-direct {p0, v1, v0, p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptBackupFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    goto :goto_2
.end method

.method private createBackupWallpaperXmlFiles(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "basePath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x65

    const/4 v1, 0x0

    .line 249
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v8, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUser;>;"
    const/4 v0, 0x0

    .line 251
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 252
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    .end local v0    # "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v2, v1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    :goto_0
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v7, Landroid/app/wallpaperbackup/GenerateXML;

    invoke-direct {v7, v8}, Landroid/app/wallpaperbackup/GenerateXML;-><init>(Ljava/util/ArrayList;)V

    .line 259
    .local v7, "generateXML":Landroid/app/wallpaperbackup/GenerateXML;
    invoke-virtual {v7, p3, p1}, Landroid/app/wallpaperbackup/GenerateXML;->createResultFile(Ljava/lang/String;I)V

    .line 248
    return-void

    .line 254
    .end local v7    # "generateXML":Landroid/app/wallpaperbackup/GenerateXML;
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    :cond_0
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    .end local v0    # "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v2, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    goto :goto_0
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 479
    const/4 v7, 0x0

    .line 481
    .local v7, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 483
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    .line 484
    .local v6, "iv":[B
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    .line 485
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 487
    .local v11, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/16 v12, 0x10

    new-array v9, v12, [B

    .line 488
    .local v9, "salt":[B
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    .line 489
    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    .line 490
    .local v10, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz v10, :cond_0

    .line 491
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 492
    new-instance v8, Ljavax/crypto/CipherInputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .local v8, "result":Ljava/io/InputStream;
    move-object v7, v8

    .line 506
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "iv":[B
    .end local v7    # "result":Ljava/io/InputStream;
    .end local v8    # "result":Ljava/io/InputStream;
    .end local v9    # "salt":[B
    .end local v10    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    :goto_0
    return-object v7

    .line 502
    .restart local v7    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 500
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v3

    .line 501
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 497
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v4

    .line 495
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 375
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 574
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 575
    nop

    nop

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 578
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 579
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 578
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 580
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 581
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 582
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    return-object v0
.end method

.method private encryptBackupFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 10
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 415
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 418
    :cond_0
    const/4 v7, 0x0

    .line 419
    .local v7, "success":Z
    const/4 v6, 0x0

    .line 420
    .local v6, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 422
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0, v5, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v6

    .line 424
    .local v6, "out":Ljava/io/OutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p2, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    const/4 v7, 0x1

    .line 432
    if-eqz v6, :cond_1

    .line 433
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 435
    :cond_1
    if-eqz v5, :cond_2

    .line 436
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    .line 443
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_3
    :goto_1
    return v7

    .line 438
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 429
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    if-eqz v6, :cond_4

    .line 433
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 435
    :cond_4
    if-eqz v4, :cond_3

    .line 436
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 438
    :catch_2
    move-exception v1

    .line 439
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 427
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 432
    if-eqz v6, :cond_5

    .line 433
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 435
    :cond_5
    if-eqz v4, :cond_3

    .line 436
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 438
    :catch_4
    move-exception v1

    .line 439
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 430
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 432
    :goto_4
    if-eqz v6, :cond_6

    .line 433
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 435
    :cond_6
    if-eqz v4, :cond_7

    .line 436
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 430
    :cond_7
    :goto_5
    throw v8

    .line 438
    :catch_5
    move-exception v1

    .line 439
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 430
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 426
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 428
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 13
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v7, 0x0

    .line 449
    .local v7, "result":Ljava/io/OutputStream;
    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 451
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    .line 452
    .local v6, "iv":[B
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 453
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 454
    .local v11, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 456
    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generateEncryptSalt()[B

    move-result-object v9

    .line 457
    .local v9, "salt":[B
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 458
    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    .line 459
    .local v10, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz v10, :cond_0

    .line 460
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 461
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .local v8, "result":Ljava/io/OutputStream;
    move-object v7, v8

    .line 475
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "iv":[B
    .end local v7    # "result":Ljava/io/OutputStream;
    .end local v8    # "result":Ljava/io/OutputStream;
    .end local v9    # "salt":[B
    .end local v10    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    :goto_0
    return-object v7

    .line 471
    .restart local v7    # "result":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v3

    .line 470
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 468
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 466
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v4

    .line 464
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3

    .prologue
    .line 385
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 386
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 387
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 389
    return-object v0
.end method

.method private generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12
    .param p1, "salt"    # [B
    .param p2, "securityPassword"    # Ljava/lang/String;

    .prologue
    .line 393
    const/16 v3, 0x3e8

    .line 394
    .local v3, "iterationCount":I
    const/16 v6, 0x100

    .line 395
    .local v6, "keyLength":I
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 397
    .local v0, "chars":[C
    const/4 v8, 0x0

    .line 399
    .local v8, "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string/jumbo v10, "PBKDF2WithHmacSHA1"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 400
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p1, v3, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 401
    .local v7, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 402
    .local v4, "key":Ljavax/crypto/SecretKey;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string/jumbo v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v9, "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    move-object v8, v9

    .line 409
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v9    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v8

    .line 405
    .restart local v8    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 404
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 591
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 592
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 594
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 595
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 600
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 604
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 596
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "Can\'t decode file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 599
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 600
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 599
    throw v5
.end method

.method private isLiveWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 566
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 567
    .local v0, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-nez v0, :cond_0

    .line 568
    const/4 v2, 0x0

    return v2

    .line 570
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string/jumbo v10, "WallpaperBackupRestoreManager"

    const-string/jumbo v11, "pushRestoreFiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 328
    .local v9, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v5, 0x0

    .line 330
    .local v5, "imagePath":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne p2, v10, :cond_2

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "imagePath":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 337
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 339
    .local v6, "stream":Ljava/io/InputStream;
    if-nez p4, :cond_3

    .line 340
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v6    # "stream":Ljava/io/InputStream;
    .local v7, "stream":Ljava/io/InputStream;
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v9, v7, v10, v11, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    const/4 v8, 0x1

    move-object v6, v7

    .line 362
    .end local v7    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 363
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    :cond_1
    :goto_2
    return v8

    .line 333
    .end local v8    # "success":Z
    .local v5, "imagePath":Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "lockscreen_wallpaper.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "imagePath":Ljava/lang/String;
    goto :goto_0

    .line 343
    .restart local v6    # "stream":Ljava/io/InputStream;
    .restart local v8    # "success":Z
    :cond_3
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_0

    .line 344
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .restart local v7    # "stream":Ljava/io/InputStream;
    :try_start_4
    move-object/from16 v0, p5

    invoke-direct {p0, v7, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    .end local v6    # "stream":Ljava/io/InputStream;
    move-result-object v1

    .line 346
    .local v1, "decryptStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v10, v11, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    const/4 v8, 0x1

    .line 349
    if-eqz v1, :cond_4

    .line 350
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .local v6, "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 352
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 353
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 365
    .end local v1    # "decryptStream":Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 366
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    .local v6, "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 359
    .end local v6    # "stream":Ljava/io/InputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 362
    if-eqz v6, :cond_1

    .line 363
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 365
    :catch_3
    move-exception v3

    .line 366
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .line 357
    .end local v6    # "stream":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 362
    if-eqz v6, :cond_1

    .line 363
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 365
    :catch_5
    move-exception v3

    .line 366
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 360
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 362
    :goto_5
    if-eqz v6, :cond_5

    .line 363
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 360
    :cond_5
    :goto_6
    throw v10

    .line 365
    :catch_6
    move-exception v3

    .line 366
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 360
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .local v6, "stream":Ljava/io/InputStream;
    goto :goto_5

    .line 356
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto :goto_4

    .line 358
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private responseToKies(Landroid/content/Context;ILjava/lang/String;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "errorCode"    # Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .param p6, "requiredSize"    # I
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "sessionTime"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "responseToKies( action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    const-string/jumbo v3, ", result="

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const-string/jumbo v3, ", errorCode="

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 514
    const-string/jumbo v3, ", requiredSize="

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 515
    const-string/jumbo v3, ")"

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string/jumbo v1, "RESULT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    if-eqz p8, :cond_0

    .line 524
    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    :cond_0
    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    const-string/jumbo v2, "sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method


# virtual methods
.method public startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBackupWallpaper( which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    const-string/jumbo v4, ", basePath = "

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    const-string/jumbo v4, ", source = "

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    const-string/jumbo v4, ")"

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, "result":I
    const/4 v8, 0x0

    .line 133
    .local v8, "requiredSize":I
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 135
    .local v7, "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const-wide/16 v16, 0x0

    .line 136
    .local v16, "availableBlocks":J
    const-wide/16 v18, 0x0

    .line 137
    .local v18, "blockSizeInBytes":J
    const-wide/32 v20, 0x40000000

    .line 139
    .local v20, "freeSpaceInBytes":J
    const/4 v5, 0x0

    .line 140
    .local v5, "action":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 141
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    .line 147
    .local v5, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v23, Landroid/os/StatFs;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 148
    .local v23, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    .line 149
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 150
    mul-long v20, v16, v18

    .line 157
    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_2

    .line 158
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( StatFs : availableBlocks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    const-string/jumbo v4, ", blockSizeInBytes = "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    const-string/jumbo v4, ", freeSpaceInBytes = "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string/jumbo v4, ")"

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v6, 0x1

    .line 162
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 163
    const/high16 v8, 0xa00000

    :cond_0
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 196
    invoke-direct/range {v2 .. v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 143
    .end local v23    # "stat":Landroid/os/StatFs;
    .local v5, "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    .local v5, "action":Ljava/lang/String;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v15

    .line 152
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .end local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v6    # "result":I
    return-void

    .line 165
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":I
    .restart local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_2
    const/16 v24, 0x0

    .line 166
    .local v24, "success":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 167
    const/16 v25, -0x3e8

    .line 169
    .local v25, "type":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 170
    invoke-direct/range {p0 .. p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    const-string/jumbo v3, "LiveWallpaper is true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v24    # "success":Z
    :cond_3
    :goto_2
    if-nez v24, :cond_0

    .line 190
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBackupWallpaper type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v6, 0x1

    .line 192
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    .line 173
    .restart local v24    # "success":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 174
    if-nez v25, :cond_3

    .line 175
    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v24

    .local v24, "success":Z
    goto :goto_2

    .line 179
    .local v24, "success":Z
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v26

    .line 180
    .local v26, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual/range {v26 .. v26}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v25

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, 0x1

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v22, 0x1

    .line 183
    .local v22, "isPreload":Z
    :goto_3
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBackupWallpaper isPreload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez v25, :cond_3

    if-nez v22, :cond_3

    .line 185
    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v24

    .local v24, "success":Z
    goto/16 :goto_2

    .line 182
    .end local v22    # "isPreload":Z
    .local v24, "success":Z
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "isPreload":Z
    goto :goto_3
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRestoreWallpaper( which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    const-string/jumbo v4, ", basePath = "

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    const-string/jumbo v4, ", source = "

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 270
    const-string/jumbo v4, ")"

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v6, 0x0

    .line 273
    .local v6, "result":I
    const/4 v8, 0x0

    .line 274
    .local v8, "requiredSize":I
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 276
    .local v7, "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const-wide/16 v16, 0x0

    .line 277
    .local v16, "availableBlocks":J
    const-wide/16 v18, 0x0

    .line 278
    .local v18, "blockSizeInBytes":J
    const-wide/32 v20, 0x40000000

    .line 280
    .local v20, "freeSpaceInBytes":J
    const/4 v5, 0x0

    .line 281
    .local v5, "action":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 282
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    .line 288
    .local v5, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v22, Landroid/os/StatFs;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 289
    .local v22, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    .line 290
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 291
    mul-long v20, v16, v18

    .line 298
    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    .line 299
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( StatFs : availableBlocks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 300
    const-string/jumbo v4, ", blockSizeInBytes = "

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    const-string/jumbo v4, ", freeSpaceInBytes = "

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    const-string/jumbo v4, ")"

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v6, 0x1

    .line 303
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 304
    const/high16 v8, 0xa00000

    .line 322
    :goto_1
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void

    .line 284
    .end local v22    # "stat":Landroid/os/StatFs;
    .local v5, "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    .local v5, "action":Ljava/lang/String;
    goto :goto_0

    .line 292
    :catch_0
    move-exception v15

    .line 293
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .end local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v6    # "result":I
    return-void

    .line 306
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":I
    .restart local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .restart local v22    # "stat":Landroid/os/StatFs;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p6

    .line 307
    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v23

    .line 308
    .local v23, "success":Z
    if-nez v23, :cond_2

    .line 309
    const/4 v6, 0x1

    .line 310
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    .line 312
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    .line 314
    const/4 v4, 0x0

    const/4 v9, -0x2

    .line 313
    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    .line 317
    const/4 v4, 0x0

    const/4 v9, -0x2

    .line 316
    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string/jumbo v6, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    return-void
.end method

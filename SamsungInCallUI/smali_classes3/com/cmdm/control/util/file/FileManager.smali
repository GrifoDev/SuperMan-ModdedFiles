.class public Lcom/cmdm/control/util/file/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_FOLDER_NAME:Ljava/lang/String; = "CXDM"

.field public static final CONTENT_FOLDER_NAME:Ljava/lang/String; = "Content"

.field public static final DIY_RECORD:Ljava/lang/String; = "DiyRecord"

.field public static final DIY_RECORD_NAME:Ljava/lang/String; = "DIY_RECORD.mp4"

.field public static final DOWNLOAD_IMAGE_FLODER:Ljava/lang/String; = "DownloadCaiXiangImage"

.field public static final FOLDER_APP:I = 0x0

.field public static final FOLDER_CONTENT:I = 0x1

.field public static final FOLDER_TEMP:I = 0x2

.field public static final FOLDER_THUMB:I = 0x4

.field public static final FOLDER_WALLPAPER:I = 0x3

.field public static final IMG_THEME_NAME:Ljava/lang/String; = "Img"

.field public static final IS_CACHE_NAME:Ljava/lang/String; = "Cache"

.field public static final LOG_FOLDER_NAME:Ljava/lang/String; = "Log"

.field public static final MUSIC_FOLDER:Ljava/lang/String; = "CXCR"

.field public static final SETTING_FOLDER_NAME:Ljava/lang/String; = "Setting"

.field public static final TAG:Ljava/lang/String; = "FileManager"

.field public static final TEMP_FOLDER_NAME:Ljava/lang/String; = "Temp"

.field public static final THUMB_FOLDER_NAME:Ljava/lang/String; = "Thumb"

.field public static final VISIT_IMAGE_FLODER:Ljava/lang/String; = "CaiXiangImage"

.field public static final WALLPAPER_FOLDER_NAME:Ljava/lang/String; = "WallPaper"

.field public static cacheDataFolderPath:Ljava/lang/String;

.field public static diyrecordpath:Ljava/lang/String;

.field private static eg:Ljava/lang/String;

.field private static eh:Ljava/lang/String;

.field private static ei:Ljava/lang/String;

.field private static ej:Ljava/lang/String;

.field private static ek:Ljava/lang/String;

.field private static el:Ljava/lang/String;

.field private static em:Ljava/lang/String;

.field private static en:Ljava/lang/String;

.field private static eo:Z

.field private static ep:Ljava/lang/String;

.field private static eq:Z

.field public static logFullPath:Ljava/lang/String;

.field public static musicDataFolderPath:Ljava/lang/String;

.field public static visitImage:Ljava/lang/String;

.field public static visitPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->eh:Ljava/lang/String;

    .line 100
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->ei:Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->ej:Ljava/lang/String;

    .line 102
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->ek:Ljava/lang/String;

    .line 103
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->el:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->em:Ljava/lang/String;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->en:Ljava/lang/String;

    .line 106
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    .line 107
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->visitPicture:Ljava/lang/String;

    .line 108
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->cacheDataFolderPath:Ljava/lang/String;

    .line 109
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->musicDataFolderPath:Ljava/lang/String;

    .line 110
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->diyrecordpath:Ljava/lang/String;

    .line 114
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->logFullPath:Ljava/lang/String;

    .line 116
    sput-boolean v2, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    .line 117
    sput-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    .line 118
    sput-boolean v2, Lcom/cmdm/control/util/file/FileManager;->eq:Z

    .line 125
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->checkSdcard()V

    .line 126
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getAPPFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/file/FileManager;->isExsit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->createAppFolder()V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateFileFolder(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 514
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateFolder(Ljava/lang/String;)V
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 503
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static canSdcardReadWrite()Z
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/cmdm/control/util/file/FileManager;->eq:Z

    return v0
.end method

.method public static checkSdcard()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "sd"

    const-string v1, "checkSdcard"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "mounted"

    .line 162
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    .line 163
    sget-boolean v0, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    .line 166
    const-string v0, "TAG->sdcardPath"

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->eh:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->ei:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WallPaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->ej:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->ek:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string v1, "Setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->em:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->en:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, "CaiXiangImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string v1, "DownloadCaiXiangImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->visitPicture:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string v1, "Log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->logFullPath:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->cacheDataFolderPath:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CXDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string v1, "CXCR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->musicDataFolderPath:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DiyRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/file/FileManager;->diyrecordpath:Ljava/lang/String;

    .line 197
    :cond_1
    return-void
.end method

.method public static cleanDirectory(Ljava/lang/String;)Z
    .locals 6
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 570
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 577
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 570
    :cond_0
    aget-object v1, v4, v3

    .line 571
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createAppFolder()V
    .locals 6

    .prologue
    .line 242
    sget-boolean v3, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v3, :cond_a

    .line 245
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->eh:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 251
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->ei:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->ej:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 263
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->ek:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 265
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 273
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->en:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_4
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 281
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_5
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->visitPicture:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_6
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->cacheDataFolderPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_7
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->musicDataFolderPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 300
    :cond_8
    new-instance v2, Ljava/io/File;

    .end local v2    # "folder":Ljava/io/File;
    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->diyrecordpath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v2    # "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 305
    :cond_9
    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cmdm/control/util/file/FileManager;->en:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v3, 0x1

    sput-boolean v3, Lcom/cmdm/control/util/file/FileManager;->eq:Z

    .line 312
    :cond_a
    :goto_0
    return-void

    .line 267
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 268
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "FileManager"

    const-string v4, "The SD Card can\'t be read or write..."

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 543
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :goto_0
    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 546
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "folderType"    # I

    .prologue
    .line 555
    :try_start_0
    invoke-static {p0, p1}, Lcom/cmdm/control/util/file/FileManager;->getFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 557
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 562
    .end local v1    # "filePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 562
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const-wide/16 v4, 0x400

    .line 882
    const-string v1, ""

    .line 883
    .local v1, "str":Ljava/lang/String;
    cmp-long v2, p0, v4

    if-ltz v2, :cond_0

    .line 884
    const-string v1, "KB"

    .line 885
    div-long/2addr p0, v4

    .line 886
    cmp-long v2, p0, v4

    if-ltz v2, :cond_0

    .line 887
    const-string v1, "MB"

    .line 888
    div-long/2addr p0, v4

    .line 891
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 893
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAPPFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "CXDM"

    return-object v0
.end method

.method public static getAppFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 9

    .prologue
    .line 851
    const-wide/16 v2, 0x0

    .line 852
    .local v2, "availableExternalMemorySize":J
    sget-boolean v8, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v8, :cond_0

    .line 853
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 854
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 855
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 856
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 857
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 861
    .end local v0    # "availableBlocks":J
    .end local v4    # "blockSize":J
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 859
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 842
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 843
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 844
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 845
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 846
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->cacheDataFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getContentFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->eh:Ljava/lang/String;

    return-object v0
.end method

.method public static getDiyRecordPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->diyrecordpath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownLoadImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->visitPicture:Ljava/lang/String;

    return-object v0
.end method

.method public static getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "folderType"    # I

    .prologue
    .line 419
    invoke-static {p0, p1}, Lcom/cmdm/control/util/file/FileManager;->getFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "imagePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 636
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v1, v2

    .line 640
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 636
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 637
    :catch_1
    move-exception v4

    goto :goto_0

    .line 629
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 636
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 637
    :catch_3
    move-exception v4

    goto :goto_0

    .line 631
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 635
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 636
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 637
    :catch_5
    move-exception v4

    goto :goto_0

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 635
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 636
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 639
    :goto_1
    throw v4

    .line 637
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    :catch_7
    move-exception v5

    goto :goto_1
.end method

.method public static getFileBasePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2f

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 344
    .local v0, "lastSeparator":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    .line 347
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 355
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    const-string v0, ""

    .line 358
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "folderType"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 467
    :goto_0
    return-object v2

    .line 449
    :pswitch_0
    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eg:Ljava/lang/String;

    .line 466
    .local v1, "folderPath":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/cmdm/control/util/file/FileManager;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "filePath":Ljava/lang/String;
    :goto_2
    move-object v2, v0

    goto :goto_0

    .line 452
    .end local v1    # "folderPath":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->eh:Ljava/lang/String;

    .line 453
    .restart local v1    # "folderPath":Ljava/lang/String;
    goto :goto_1

    .line 455
    .end local v1    # "folderPath":Ljava/lang/String;
    :pswitch_2
    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ek:Ljava/lang/String;

    .line 456
    .restart local v1    # "folderPath":Ljava/lang/String;
    goto :goto_1

    .line 458
    .end local v1    # "folderPath":Ljava/lang/String;
    :pswitch_3
    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ej:Ljava/lang/String;

    .line 459
    .restart local v1    # "folderPath":Ljava/lang/String;
    goto :goto_1

    .line 461
    .end local v1    # "folderPath":Ljava/lang/String;
    :pswitch_4
    sget-object v1, Lcom/cmdm/control/util/file/FileManager;->ei:Ljava/lang/String;

    .line 462
    .restart local v1    # "folderPath":Ljava/lang/String;
    goto :goto_1

    .restart local v0    # "filePath":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .line 467
    goto :goto_2

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getFileString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v6, 0x0

    .line 649
    .local v6, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 650
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 652
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 656
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    .line 659
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 660
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    .end local v6    # "result":Ljava/lang/String;
    .local v7, "result":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 670
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    move-object v6, v7

    .line 674
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 657
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 661
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 662
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/SecurityException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 670
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 671
    :catch_1
    move-exception v8

    goto :goto_1

    .line 663
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 664
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 669
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 670
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 671
    :catch_3
    move-exception v8

    goto :goto_1

    .line 665
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 669
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 670
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 671
    :catch_5
    move-exception v8

    goto :goto_1

    .line 667
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 669
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 670
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 673
    :goto_6
    throw v8

    .line 671
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_6
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_7
    move-exception v9

    goto :goto_6

    .line 667
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 665
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 663
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 661
    :catch_a
    move-exception v2

    goto :goto_2
.end method

.method public static getImgTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->en:Ljava/lang/String;

    return-object v0
.end method

.method public static getInitSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->logFullPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getMusicFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->musicDataFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRawString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 587
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v2, v4, [B

    .line 589
    .local v2, "raw":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 590
    new-instance v3, Ljava/lang/String;

    .end local v3    # "result":Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .restart local v3    # "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 599
    :goto_0
    return-object v3

    .line 591
    .end local v2    # "raw":[B
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Problem while trying to read raw"

    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 595
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 598
    :goto_1
    throw v4

    .line 596
    :catch_1
    move-exception v5

    goto :goto_1

    .restart local v2    # "raw":[B
    .restart local v3    # "result":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const-string v0, "mounted"

    .line 146
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    .line 147
    sget-boolean v0, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no sdcard!"

    goto :goto_0
.end method

.method public static getSettingFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->em:Ljava/lang/String;

    return-object v0
.end method

.method public static getTempDesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->el:Ljava/lang/String;

    return-object v0
.end method

.method public static getTempFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ek:Ljava/lang/String;

    return-object v0
.end method

.method public static getThumbFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ei:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 9

    .prologue
    .line 866
    const-wide/16 v6, 0x0

    .line 867
    .local v6, "totalExternalMemorySize":J
    sget-boolean v8, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v8, :cond_0

    .line 868
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 869
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 870
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 871
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v4, v8

    .line 872
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 877
    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :goto_0
    return-wide v6

    .line 874
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 833
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 834
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 835
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 836
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 837
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getVisitImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    return-object v0
.end method

.method public static getWallpaperFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->ej:Ljava/lang/String;

    return-object v0
.end method

.method public static isEnoughForDownload(J)Z
    .locals 10
    .param p0, "downloadSize"    # J

    .prologue
    .line 907
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 908
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 907
    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 911
    .local v6, "statFs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    .line 913
    .local v1, "blockCounts":I
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 915
    .local v0, "avCounts":I
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 917
    .local v2, "blockSize":J
    int-to-long v8, v0

    mul-long v4, v8, v2

    .line 918
    .local v4, "spaceLeft":J
    cmp-long v7, v4, p0

    if-gez v7, :cond_0

    .line 919
    const/4 v7, 0x0

    .line 921
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isExsit(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "folder":Ljava/io/File;
    const-string v1, "sd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExsit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cmdm/control/util/file/FileManager;->ep:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "sd"

    const-string v2, "isExsit:true"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    .line 212
    :goto_0
    return v1

    .line 211
    :cond_0
    const-string v1, "sd"

    const-string v2, "isExsit:false"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 475
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 481
    :goto_0
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 481
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 478
    :catch_1
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isFileExist(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "folderType"    # I

    .prologue
    .line 489
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/cmdm/control/util/file/FileManager;->getFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 495
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 492
    :catch_1
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isSdcardExsit()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "state":Ljava/lang/String;
    invoke-static {v1}, Lcom/cmdm/control/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/4 v2, 0x0

    sput-boolean v2, Lcom/cmdm/control/util/file/FileManager;->eo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    sget-boolean v2, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    return v2

    .line 323
    :cond_0
    :try_start_1
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/cmdm/control/util/file/FileManager;->eo:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v3, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    goto :goto_0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "fromPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 525
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, "fromFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, "toFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 534
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "toFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static renameAppFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldFileName"    # Ljava/lang/String;
    .param p1, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v3, "mounted"

    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    .line 219
    const-string v3, "sd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "renameAppFolder:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-boolean v3, Lcom/cmdm/control/util/file/FileManager;->eo:Z

    if-eqz v3, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "folder":Ljava/io/File;
    const-string v3, "sd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "folder.canWrite():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "sd"

    const-string v4, "renameAppFolder 160"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "newFloder":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v3, 0x1

    .line 235
    .end local v1    # "folder":Ljava/io/File;
    .end local v2    # "newFloder":Ljava/io/File;
    :goto_0
    return v3

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setFileString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/cmdm/control/util/file/FileManager;->writeByFileWrite(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_1
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 692
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 694
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeByFileOutputStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "_sDestFile"    # Ljava/lang/String;
    .param p1, "_sContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 757
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 767
    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 771
    const/4 v1, 0x0

    .line 777
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 763
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 771
    const/4 v1, 0x0

    goto :goto_0

    .line 765
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 767
    :goto_2
    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 771
    const/4 v1, 0x0

    .line 775
    :cond_1
    throw v3

    .line 765
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 761
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static writeByFileWrite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "_sDestFile"    # Ljava/lang/String;
    .param p1, "_sContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 716
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    if-eqz v2, :cond_2

    .line 728
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 730
    const/4 v1, 0x0

    .line 736
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 726
    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 730
    const/4 v1, 0x0

    goto :goto_0

    .line 724
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 726
    :goto_2
    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 730
    const/4 v1, 0x0

    .line 734
    :cond_1
    throw v3

    .line 724
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 720
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method public static writeByOutputStreamWrite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "_sDestFile"    # Ljava/lang/String;
    .param p1, "_sContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    const/4 v3, 0x0

    .line 796
    .local v3, "os":Ljava/io/OutputStreamWriter;
    const/4 v1, 0x0

    .line 800
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    .end local v3    # "os":Ljava/io/OutputStreamWriter;
    .local v4, "os":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 811
    if-eqz v4, :cond_5

    .line 813
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 815
    const/4 v3, 0x0

    .line 819
    .end local v4    # "os":Ljava/io/OutputStreamWriter;
    .restart local v3    # "os":Ljava/io/OutputStreamWriter;
    :goto_0
    if-eqz v2, :cond_4

    .line 821
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 823
    const/4 v1, 0x0

    .line 829
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 807
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 811
    if-eqz v3, :cond_1

    .line 813
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 815
    const/4 v3, 0x0

    .line 819
    :cond_1
    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 823
    const/4 v1, 0x0

    goto :goto_1

    .line 809
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 811
    :goto_3
    if-eqz v3, :cond_2

    .line 813
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 815
    const/4 v3, 0x0

    .line 819
    :cond_2
    if-eqz v1, :cond_3

    .line 821
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 823
    const/4 v1, 0x0

    .line 827
    :cond_3
    throw v5

    .line 809
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/OutputStreamWriter;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStreamWriter;
    .restart local v3    # "os":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 805
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/OutputStreamWriter;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStreamWriter;
    .restart local v3    # "os":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/OutputStreamWriter;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/OutputStreamWriter;
    :cond_5
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStreamWriter;
    .restart local v3    # "os":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

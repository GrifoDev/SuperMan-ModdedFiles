.class public Lcom/cmdm/control/util/client/Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field public static cameraTakeParamFile:Ljava/io/File; = null

.field static cn:Lcom/cmdm/control/util/file/FileReadWrite; = null

.field public static final isPrint:Z = true

.field private static mContext:Landroid/content/Context;

.field public static picture:Ljava/lang/String;

.field public static video:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 23
    const-string v0, "com.cmdm.polychrome.ui"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "0"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    .line 26
    const-string v0, "1"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ServiceIsStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 122
    .line 123
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    check-cast v1, Landroid/app/ActivityManager;

    .line 125
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 131
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 127
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const/4 v3, 0x1

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "greeting"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    :cond_0
    return-object p0
.end method

.method public static getDownLoadAPKNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->getPictureCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method public static getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v1, ""

    .line 401
    .local v1, "savePath":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "filenameString":Ljava/lang/String;
    move-object v1, p0

    .line 404
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .end local v0    # "filenameString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getLocalHighPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalMUSICPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 366
    move-object v0, p0

    .line 367
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 101
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Lcom/cmdm/control/exception/a;
    :cond_0
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getPictureCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 318
    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    const-string v1, ""

    .line 320
    .local v1, "type":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "start":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 322
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    .end local v0    # "start":I
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v2

    .line 329
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSourceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->getPictureCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "crsType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 342
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    const-string v0, "0"

    .line 355
    :goto_0
    return-object v0

    .line 346
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const-string v0, "1"

    goto :goto_0

    .line 349
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    const-string v0, "2"

    goto :goto_0

    .line 353
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getSpecialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "greeting"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 220
    const-string v0, ","

    const-string v1, "\uff0c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_0
    return-object p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v2, ""

    .line 157
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 158
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 159
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 160
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_1

    .line 161
    :cond_0
    const-string v3, ""

    .line 166
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 163
    :catch_0
    move-exception v3

    :cond_1
    move-object v3, v2

    .line 166
    goto :goto_0
.end method

.method public static initSetting(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->setNetWorkType(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 70
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 71
    .local v5, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    .local v2, "screenHeight":I
    if-le v5, v2, :cond_2

    move v4, v2

    .line 74
    .local v4, "screenMin":I
    :goto_0
    if-le v5, v2, :cond_3

    move v3, v5

    .line 76
    .local v3, "screenMax":I
    :goto_1
    invoke-static {v4}, Lcom/cmdm/control/util/client/Setting;->saveWidth(I)V

    .line 77
    invoke-static {v3}, Lcom/cmdm/control/util/client/Setting;->saveHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":I
    .end local v3    # "screenMax":I
    .end local v4    # "screenMin":I
    .end local v5    # "screenWidth":I
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "screenHeight":I
    .restart local v5    # "screenWidth":I
    :cond_2
    move v4, v5

    .line 73
    goto :goto_0

    .restart local v4    # "screenMin":I
    :cond_3
    move v3, v2

    .line 75
    goto :goto_1

    .line 79
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":I
    .end local v4    # "screenMin":I
    .end local v5    # "screenWidth":I
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static loadAfterCalling()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 191
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "aftercalling"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static loadAppType()I
    .locals 4

    .prologue
    .line 270
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 271
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "appType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static loadCalling()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 305
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "calling"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadChannelID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 476
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 475
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "channelID"

    const-string v2, "0000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadContactAccount()I
    .locals 5

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "contactAccount"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contactAccount=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 504
    :goto_1
    return v2

    .line 497
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v1    # "e":Lcom/cmdm/control/exception/a;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static loadDistanceTime()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 238
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 239
    sget-object v3, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    .line 238
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "distance_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 241
    .local v0, "distance":Ljava/lang/Long;
    return-object v0
.end method

.method public static loadHeight()I
    .locals 4

    .prologue
    .line 285
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 286
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "height"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static loadNetWorkStatu()Z
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static loadSystemDefaultUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 460
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 461
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 460
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "defaultSystemUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadWidth()I
    .locals 4

    .prologue
    .line 255
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 256
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "width"

    const/16 v2, 0x1e0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static saveAfterCalling(Ljava/lang/Boolean;)V
    .locals 4
    .param p0, "afterCalling"    # Ljava/lang/Boolean;

    .prologue
    .line 184
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 185
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aftercalling"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-void
.end method

.method public static saveAppType(I)V
    .locals 4
    .param p0, "appType"    # I

    .prologue
    .line 264
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 265
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appType"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public static saveCalling(Z)V
    .locals 4
    .param p0, "calling"    # Z

    .prologue
    .line 298
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 299
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 298
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "calling"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    return-void
.end method

.method public static saveChannelID(Ljava/lang/String;)V
    .locals 4
    .param p0, "channelID"    # Ljava/lang/String;

    .prologue
    .line 469
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 470
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 469
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "channelID"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    return-void
.end method

.method public static saveContactAccount(I)V
    .locals 2
    .param p0, "contactAccount"    # I

    .prologue
    .line 485
    const-string v0, "contactAccount"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v1, "str_content":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v2, p0, v1}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveDistanceTime(Ljava/lang/Long;)V
    .locals 6
    .param p0, "distance_time"    # Ljava/lang/Long;

    .prologue
    .line 232
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 233
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "distance_time"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    return-void
.end method

.method public static saveHeight(I)V
    .locals 4
    .param p0, "height"    # I

    .prologue
    .line 279
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 280
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method public static saveSystemDefaultUrl(Ljava/lang/String;)V
    .locals 4
    .param p0, "defaultSystemUrl"    # Ljava/lang/String;

    .prologue
    .line 453
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 454
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultSystemUrl"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 456
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    return-void
.end method

.method public static saveWidth(I)V
    .locals 4
    .param p0, "width"    # I

    .prologue
    .line 248
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    .line 249
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void
.end method

.method public static setNetWorkType(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {p0}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v0

    .line 174
    .local v0, "netWorkType":Lcom/cmdm/control/network/b;
    invoke-static {v0}, Lcom/cmdm/control/network/a;->a(Lcom/cmdm/control/network/b;)V

    .line 175
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "packageName"

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static setVersion(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "versionName":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadAppType()I

    move-result v0

    .line 141
    .local v0, "appType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 142
    :cond_0
    sput-object v1, Lcom/cmdm/control/util/client/AppConfigDP;->V:Ljava/lang/String;

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v2, "1.0.0"

    sput-object v2, Lcom/cmdm/control/util/client/AppConfigDP;->V:Ljava/lang/String;

    goto :goto_0
.end method

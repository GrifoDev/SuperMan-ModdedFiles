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

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    const-string v0, "com.cmdm.polychrome.ui"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ServiceIsStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

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

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getDownLoadAPKNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

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

    return-object v0
.end method

.method public static getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getLocalHighPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalMUSICPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getPictureCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ""

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSourceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->getPictureCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "2"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getSpecialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "\uff0c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string v3, ""

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static initSetting(Landroid/content/Context;)V
    .locals 7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->setNetWorkType(Landroid/content/Context;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v2, :cond_2

    move v4, v2

    :goto_0
    if-le v5, v2, :cond_3

    move v3, v5

    :goto_1
    invoke-static {v4}, Lcom/cmdm/control/util/client/Setting;->saveWidth(I)V

    invoke-static {v3}, Lcom/cmdm/control/util/client/Setting;->saveHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static loadAfterCalling()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aftercalling"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static loadAppType()I
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static loadCalling()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "calling"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadChannelID()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "channelID"

    const-string v2, "0000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadContactAccount()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "contactAccount"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static loadDistanceTime()Ljava/lang/Long;
    .locals 6

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "distance_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static loadHeight()I
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "height"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static loadNetWorkStatu()Z
    .locals 1

    sget-object v0, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static loadSystemDefaultUrl()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "defaultSystemUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadWidth()I
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "width"

    const/16 v2, 0x1e0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static saveAfterCalling(Ljava/lang/Boolean;)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aftercalling"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveAppType(I)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appType"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveCalling(Z)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "calling"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveChannelID(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "channelID"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveContactAccount(I)V
    .locals 2

    const-string v0, "contactAccount"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v2, Lcom/cmdm/control/util/client/Setting;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v2, p0, v1}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveDistanceTime(Ljava/lang/Long;)V
    .locals 6

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "distance_time"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveHeight(I)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSystemDefaultUrl(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultSystemUrl"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveWidth(I)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/util/client/Setting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmdm/control/util/client/Setting;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setNetWorkType(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/network/a;->a(Lcom/cmdm/control/network/b;)V

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {v0, p0}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVersion(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadAppType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    sput-object v1, Lcom/cmdm/control/util/client/AppConfigDP;->V:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string v2, "1.0.0"

    sput-object v2, Lcom/cmdm/control/util/client/AppConfigDP;->V:Ljava/lang/String;

    goto :goto_0
.end method

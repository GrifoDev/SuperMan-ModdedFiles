.class public Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;
.super Ljava/lang/Object;
.source "HwrLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;
    }
.end annotation


# static fields
.field public static APK_VERSION:[I

.field public static final TAG:Ljava/lang/String;

.field private static mIsSdkAvailable:Z

.field private static mIsSdlAvailable:Z


# instance fields
.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdlAvailable:Z

    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Initialize HwrLanguageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot read and write external storage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There is no text recognition platform"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 14

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v11, "com.samsung.android.handwriting.SemRecognizer"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    if-nez v7, :cond_2

    const/4 v11, 0x0

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdlAvailable:Z

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v9, 0x0

    :try_start_1
    const-string/jumbo v11, "com.samsung.android.sdk.handwriting"

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Version = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    sget-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    if-nez v11, :cond_4

    :goto_3
    sget-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdlAvailable:Z

    if-eqz v11, :cond_8

    :cond_0
    const/4 v11, 0x1

    :goto_4
    return v11

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No SDL apis"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "java.library.path"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/system/lib"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v8, 0x2

    :goto_5
    invoke-static {p1, v8}, Lcom/samsung/android/handwriting/SemRecognizer;->initialize(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/handwriting/SemRecognizer;->isHandwritingSupported()Z

    move-result v11

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdlAvailable:Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_5

    :catch_1
    move-exception v3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No SDK apis"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v5

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    invoke-static {v11}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v13, "No authority to handwriting provider"

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v11, 0x0

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    goto :goto_2

    :cond_4
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x4

    new-array v0, v11, [I

    const/4 v6, 0x0

    :goto_6
    const/4 v11, 0x4

    if-lt v6, v11, :cond_5

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    const/4 v12, 0x0

    aget v12, v0, v12

    const/4 v13, 0x0

    aput v12, v11, v13

    sget-object v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    const/4 v12, 0x1

    aget v12, v0, v12

    const/4 v13, 0x1

    aput v12, v11, v13

    goto :goto_3

    :cond_5
    array-length v11, v1

    if-le v11, v6, :cond_6

    aget-object v11, v1, v6

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    aget-object v11, v1, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v0, v6

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    aput v11, v0, v6

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    aput v11, v0, v6

    goto :goto_7

    :cond_8
    sget-boolean v11, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    if-nez v11, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_4
.end method

.method private isExternalStorageReadable()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2
.end method

.method private isExternalStorageWritable()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSDKAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    return v0
.end method

.method public static isSDLAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdlAvailable:Z

    return v0
.end method


# virtual methods
.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V

    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void
.end method

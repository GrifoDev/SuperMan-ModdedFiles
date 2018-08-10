.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mWhiteWebAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.chrome"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExtractWebData(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isSupportSmartClip(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canExtractWebData : SmartClip is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isWritingWebDataFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canExtractWebData : Feature disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canExtractWebData : Desktop mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isMultiWindowStyleAppExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "canExtractWebData : MultiWindow style app exists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 7

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v3, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v4

    return-object v4
.end method

.method public static getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getWebData : Failed to extract the SmartClip data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getWebData : content Rect w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v8, "url"

    invoke-virtual {v1, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getWebData : url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v6, v5

    :cond_3
    new-instance v7, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getWebData : Invalid web data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_4
    return-object v7
.end method

.method private static isDesktopModeEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isMultiWindowStyleAppExist(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v0

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMultiWindowStyleAppExist : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return v4

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isMultiWindowStyleAppExist : MODE_FREEFORM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isMultiWindowStyleAppExist : MODE_PICTURE_IN_PICTURE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isMultiWindowStyleAppExist : MODE_SPLIT_SCREEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static isSupportSmartClip(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : url or appPkgName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidWebData url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", data.mAppPkgName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : Not valid url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_5

    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : Not white app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private static isWritingWebDataFeatureEnabled()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_GO_TO_URL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWritingWebDataFeatureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putWebDataToContentValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "captured_url"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "captured_app"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "putWebDataToContentValues : Web data is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

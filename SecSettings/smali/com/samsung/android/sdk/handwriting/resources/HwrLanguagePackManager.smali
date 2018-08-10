.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
.super Ljava/lang/Object;
.source "HwrLanguagePackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

.field private static mLanguageManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mServerConnection:Z


# instance fields
.field private mDownloadQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageListNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;

.field private mUpdateProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mServerConnection:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isSDLAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isSDKAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sdk language manager appended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sdk language manager appended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500()Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mServerConnection:Z

    return v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .locals 3

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->initialize()V

    goto :goto_0
.end method


# virtual methods
.method cancelDownload(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancel Download: LanguageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Queue size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method finishDownload(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finish Download: Queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->download()V

    goto :goto_0
.end method

.method getAvailableLanguage()[Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "available language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getIDs([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean p2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mServerConnection:Z

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iput v4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_4

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;

    sget-boolean v4, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mServerConnection:Z

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No language manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Language downloading... "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    return-void

    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Updating..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update language list progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

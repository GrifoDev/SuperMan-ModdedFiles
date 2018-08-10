.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
.super Ljava/lang/Object;
.source "HWRLanguagePack.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mIsPreload:Z

.field private mLanguage:Ljava/lang/String;

.field private mPrevState:I

.field private mProgress:I

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    return-void

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method private download()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPrevState(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->download()V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return v0
.end method

.method public isDownloadInProgress()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDeleteResult(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDeleteResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;->onComplete(ZLjava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    goto :goto_1
.end method

.method public notifyUpdateResult(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUpdateResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    iput v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    goto :goto_2
.end method

.method public setPreloaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method public setPrevState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    const/16 v1, 0x64

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    return-void
.end method

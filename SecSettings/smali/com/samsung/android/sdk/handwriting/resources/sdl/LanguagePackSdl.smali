.class public Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;
.super Ljava/lang/Object;
.source "LanguagePackSdl.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;


# instance fields
.field private mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;


# direct methods
.method public constructor <init>(Lcom/samsung/android/handwriting/resources/SemLanguagePack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    return-void
.end method


# virtual methods
.method public download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->download(Lcom/samsung/android/handwriting/resources/SemLanguagePack$OnDownloadListener;)V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.class Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;
.super Ljava/lang/Object;
.source "LanguagePackSdl.java"

# interfaces
.implements Lcom/samsung/android/handwriting/resources/SemLanguagePack$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;

.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    goto :goto_0
.end method

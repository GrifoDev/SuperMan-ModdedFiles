.class public interface abstract Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
.super Ljava/lang/Object;
.source "LanguagePackInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;
    }
.end annotation


# virtual methods
.method public abstract download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract isDownloadInProgress()Z
.end method

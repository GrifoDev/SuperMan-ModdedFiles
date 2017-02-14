.class Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;
.super Ljava/lang/Object;
.source "LocaleSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/LocaleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleWrapper"
.end annotation


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLanguage:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocale(Ljava/util/Locale;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

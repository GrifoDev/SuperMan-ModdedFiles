.class public Lcom/android/launcher2/searchapp/LocaleSet;
.super Ljava/lang/Object;
.source "LocaleSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mPrimaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

.field private final mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/LocaleSet;->CHINESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/LocaleSet;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/LocaleSet;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/searchapp/LocaleSet;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-direct {v0, p1}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mPrimaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    new-instance v0, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {v0, p2}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    return-void
.end method

.method public static getDefault()Lcom/android/launcher2/searchapp/LocaleSet;
    .locals 2

    new-instance v0, Lcom/android/launcher2/searchapp/LocaleSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/searchapp/LocaleSet;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private hasSecondaryLocale()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->hasLocale()Z

    move-result v0

    return v0
.end method

.method private isPrimaryLocale(Ljava/util/Locale;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mPrimaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->isLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private isSecondaryLocale(Ljava/util/Locale;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->isLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/launcher2/searchapp/LocaleSet;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/searchapp/LocaleSet;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mPrimaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher2/searchapp/LocaleSet;->isPrimaryLocale(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher2/searchapp/LocaleSet;->isSecondaryLocale(Ljava/util/Locale;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mPrimaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/LocaleSet;->hasSecondaryLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/LocaleSet;->mSecondaryLocale:Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/LocaleSet$LocaleWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

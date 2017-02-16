.class public final Ljava/util/Locale$Builder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final localeBuilder:Lsun/util/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2335
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    .line 2334
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 2565
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2569
    return-object p0

    .line 2566
    :catch_0
    move-exception v0

    .line 2567
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public build()Ljava/util/Locale;
    .locals 6

    .prologue
    .line 2632
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 2633
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 2634
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2635
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 2636
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 2635
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 2638
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public clear()Ljava/util/Locale$Builder;
    .locals 1

    .prologue
    .line 2605
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 2606
    return-object p0
.end method

.method public clearExtensions()Ljava/util/Locale$Builder;
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 2618
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 2587
    if-nez p1, :cond_0

    .line 2588
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "attribute == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2592
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2596
    return-object p0

    .line 2593
    :catch_0
    move-exception v0

    .line 2594
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2514
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    return-object p0

    .line 2515
    :catch_0
    move-exception v0

    .line 2516
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2409
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    return-object p0

    .line 2410
    :catch_0
    move-exception v0

    .line 2411
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 5
    .param p1, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 2385
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    .line 2386
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 2387
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2388
    new-instance v2, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2390
    :cond_0
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2391
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2360
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-static {p1}, Ljava/util/Locale;->-get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Locale;->-get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2364
    return-object p0

    .line 2361
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 2455
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    return-object p0

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2430
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2434
    return-object p0

    .line 2431
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2544
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    return-object p0

    .line 2545
    :catch_0
    move-exception v0

    .line 2546
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 2482
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2486
    return-object p0

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

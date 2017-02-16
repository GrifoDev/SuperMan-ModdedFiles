.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final transient icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/Currency;)V
    .locals 1
    .param p1, "icuCurrency"    # Landroid/icu/util/Currency;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    .line 80
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const-class v5, Ljava/util/Currency;

    monitor-enter v5

    .line 160
    :try_start_0
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    if-nez v4, :cond_1

    .line 162
    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v1

    .line 163
    .local v1, "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "icuCurrency$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Currency;

    .line 165
    .local v2, "icuCurrency":Landroid/icu/util/Currency;
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 166
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/Currency;

    .end local v0    # "currency":Ljava/util/Currency;
    invoke-direct {v0, v2}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 168
    .restart local v0    # "currency":Ljava/util/Currency;
    sget-object v4, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    iget-object v6, v0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "currency":Ljava/util/Currency;
    .end local v2    # "icuCurrency":Landroid/icu/util/Currency;
    .end local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 173
    .restart local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .locals 5
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 93
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    monitor-enter v3

    .line 94
    :try_start_0
    sget-object v2, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Currency;

    .line 95
    .local v1, "instance":Ljava/util/Currency;
    if-nez v1, :cond_1

    .line 97
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 98
    .local v0, "icuInstance":Landroid/icu/util/Currency;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 99
    return-object v4

    .line 101
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Currency;

    .end local v1    # "instance":Ljava/util/Currency;
    invoke-direct {v1, v0}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 102
    .restart local v1    # "instance":Ljava/util/Currency;
    sget-object v2, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "icuInstance":Landroid/icu/util/Currency;
    :cond_1
    monitor-exit v3

    .line 104
    return-object v1

    .line 93
    .end local v1    # "instance":Ljava/util/Currency;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 132
    .local v2, "icuInstance":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "EURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    const-string/jumbo v4, "PREEURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 134
    if-eqz v4, :cond_1

    .line 136
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "currencyCode":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported ISO 3166 country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "XXX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    :cond_3
    return-object v6

    .line 145
    :cond_4
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 266
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

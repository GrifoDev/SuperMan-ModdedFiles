.class public Lsun/util/locale/UnicodeLocaleExtension;
.super Lsun/util/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final SINGLETON:C = 'u'


# instance fields
.field private final attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string/jumbo v1, "ca"

    const-string/jumbo v2, "japanese"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    .line 51
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string/jumbo v1, "nu"

    const-string/jumbo v2, "thai"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x75

    invoke-direct {p0, v1, v0}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 56
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x75

    invoke-direct {p0, v7}, Lsun/util/locale/Extension;-><init>(C)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 66
    :goto_0
    if-eqz p2, :cond_1

    .line 67
    iput-object p2, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 72
    :goto_1
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    :goto_2
    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    goto :goto_1

    .line 73
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "attribute":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 77
    .end local v0    # "attribute":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "keyword$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    .local v3, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 81
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 83
    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 86
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lsun/util/locale/UnicodeLocaleExtension;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 115
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingletonChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 109
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v0

    const/16 v1, 0x75

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTypeSubtag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 126
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getID()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()C
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getKey()C

    move-result v0

    return v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

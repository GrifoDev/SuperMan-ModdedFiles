.class public final Lsun/util/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;,
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private uattributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private ukeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const-string/jumbo v1, "x"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    sput-object v0, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v0, p1, p2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method static removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v5, "-"

    invoke-direct {v0, p0, v5}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_3

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "lvariant"

    invoke-static {v5, v6}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v1

    :cond_2
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-boolean v5, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    if-eqz v1, :cond_4

    if-le v1, v3, :cond_5

    :cond_4
    :goto_1
    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_7
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/util/locale/InternalLocaleBuilder;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v3, v0, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    :cond_2
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    :cond_4
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    new-instance v5, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v5, p2, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p0
.end method

.method private setUnicodeLocaleExtension(Ljava/lang/String;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v12, 0x4

    const/4 v6, 0x1

    const/4 v11, -0x1

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    :cond_1
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v8, "-"

    invoke-direct {v0, p1, v8}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-boolean v8, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_7

    if-eq v5, v11, :cond_3

    if-eq v4, v11, :cond_6

    :cond_3
    move v8, v6

    :goto_2
    if-nez v8, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_4
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    iput-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    :cond_5
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v9, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_6
    move v8, v7

    goto :goto_2

    :cond_7
    if-ne v5, v11, :cond_b

    const-string/jumbo v3, ""

    :goto_3
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v8, :cond_8

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    :cond_8
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v1, 0x0

    :goto_4
    const/4 v4, -0x1

    const/4 v5, -0x1

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_15

    if-eqz v1, :cond_13

    sget-boolean v8, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_11

    if-eq v5, v11, :cond_a

    if-eq v4, v11, :cond_10

    :cond_a
    :goto_6
    if-nez v6, :cond_11

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_b
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    move-object v1, v2

    goto :goto_4

    :cond_d
    if-ne v5, v11, :cond_e

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v5

    :cond_e
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    :cond_10
    move v6, v7

    goto :goto_6

    :cond_11
    if-ne v5, v11, :cond_14

    const-string/jumbo v3, ""

    :goto_7
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v6, :cond_12

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    :cond_12
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void

    :cond_14
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_15
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()Lsun/util/locale/InternalLocaleBuilder;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Lsun/util/locale/InternalLocaleBuilder;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-object p0
.end method

.method public getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 12

    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    sget-object v10, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v9, "-"

    invoke-direct {v0, v3, v9}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    :cond_0
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "-"

    const-string/jumbo v11, "_"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v1, v7, v4, v8}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v9

    return-object v9

    :cond_3
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "lvariant"

    invoke-static {v9, v10}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v4}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    :cond_1
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ill-formed extension key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "_"

    const-string/jumbo v8, "-"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v7, "-"

    invoke-direct {v1, v5, v7}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_6

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v6

    :goto_2
    if-nez v6, :cond_7

    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ill-formed extension value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_6
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0, v5}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v7, :cond_a

    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    :cond_a
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    return-object p0

    :cond_0
    const-string/jumbo v8, "_"

    const-string/jumbo v9, "-"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v8, "-"

    invoke-direct {v1, p1, v8}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v7

    move-object v6, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-ge v2, v7, :cond_2

    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incomplete extension \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_2
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    if-gt v2, v7, :cond_7

    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incomplete privateuse:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_6
    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ill-formed extension subtags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_9
    invoke-direct {p0, v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    move-result-object v8

    return-object v8
.end method

.method public setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_2

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "und"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ja"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v16, "JP"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v16, "JP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v16, :cond_0

    const-string/jumbo v16, "japanese"

    const-string/jumbo v17, "ca"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    :cond_0
    const-string/jumbo v15, ""

    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_3

    invoke-static {v9}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    invoke-static {v8}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    const-string/jumbo v16, "-"

    const-string/jumbo v17, "_"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "_"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_b

    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed variant: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v16

    :cond_5
    const-string/jumbo v16, "th"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string/jumbo v16, "TH"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string/jumbo v16, "TH"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v16, :cond_6

    const-string/jumbo v16, "thai"

    const-string/jumbo v17, "nu"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    :cond_6
    const-string/jumbo v15, ""

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v16, "no"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string/jumbo v16, "NO"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string/jumbo v16, "NY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string/jumbo v7, "nn"

    const-string/jumbo v15, ""

    goto/16 :goto_0

    :cond_8
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed language: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_9
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed script: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_a
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed region: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_b
    move-object/from16 v0, p0

    iput-object v7, v0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    if-nez p2, :cond_e

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v2

    instance-of v0, v2, Lsun/util/locale/UnicodeLocaleExtension;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    move-object v12, v2

    check-cast v12, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    move-object/from16 v16, v0

    if-nez v16, :cond_d

    new-instance v16, Ljava/util/HashSet;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    :cond_f
    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_10

    new-instance v16, Ljava/util/HashMap;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_12

    new-instance v16, Ljava/util/HashMap;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v18

    invoke-direct/range {v17 .. v18}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v2}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_13
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "_"

    const-string/jumbo v5, "-"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v4, "-"

    invoke-direct {v1, v3, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/util/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_3
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    :cond_5
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v2, "-"

    const-string/jumbo v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-direct {p0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v2, Lsun/util/locale/LocaleSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ill-formed variant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    iput-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lsun/util/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

.field public static final NUMBER_THAI:Lsun/util/locale/LocaleExtensions;


# instance fields
.field private final extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lsun/util/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x75

    const-class v0, Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    new-instance v0, Lsun/util/locale/LocaleExtensions;

    const-string/jumbo v1, "u-ca-japanese"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    invoke-direct {v0, v1, v2, v3}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    sput-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    new-instance v0, Lsun/util/locale/LocaleExtensions;

    const-string/jumbo v1, "u-nu-thai"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    invoke-direct {v0, v1, v2, v3}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    sput-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-static/range {p2 .. p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-static/range {p3 .. p3}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v8, 0x0

    :goto_2
    if-nez v6, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    if-eqz v6, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual/range {v19 .. v19}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v19

    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static {v9}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static/range {v18 .. v18}, Lsun/util/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    :cond_2
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    new-instance v20, Lsun/util/locale/Extension;

    invoke-static/range {v18 .. v18}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    if-nez v8, :cond_0

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    return-void

    :cond_7
    if-nez v7, :cond_8

    if-eqz v8, :cond_b

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v7, :cond_9

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual/range {v19 .. v19}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v14}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    new-instance v17, Lsun/util/locale/UnicodeLocaleExtension;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    const/16 v19, 0x75

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v13}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_c

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    :goto_6
    return-void

    :cond_c
    invoke-static {v13}, Lsun/util/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    goto :goto_6
.end method

.method public static isValidKey(C)Z
    .locals 1

    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidUnicodeLocaleKey(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toID(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Lsun/util/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/locale/Extension;

    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    check-cast p1, Lsun/util/locale/LocaleExtensions;

    iget-object v1, p1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;
    .locals 2

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-virtual {v0}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-virtual {v0}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/android/settings/search/SecMenu;
.super Ljava/lang/Object;
.source "SecMenu.java"


# instance fields
.field private final EMPTY:Ljava/lang/String;

.field private final HYPHEN:Ljava/lang/String;

.field private final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

.field private final NON_BREAKING_HYPHEN:Ljava/lang/String;

.field private final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected categoryId:Ljava/lang/String;

.field protected iconResId:I

.field protected index:I

.field protected key:Ljava/lang/String;

.field protected keywords:Ljava/lang/String;

.field protected menuType:I

.field protected parent:Lcom/android/settings/search/SecMenu;

.field protected path:Ljava/lang/String;

.field protected subMenues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/search/SecMenu;",
            ">;"
        }
    .end annotation
.end field

.field protected summary:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SecMenutree"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "PreferenceScreen"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->EMPTY:Ljava/lang/String;

    const-string/jumbo v0, "\u2011"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->NON_BREAKING_HYPHEN:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->HYPHEN:Ljava/lang/String;

    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    iput-object p2, p0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/search/SecMenu;->index:I

    iput v2, p0, Lcom/android/settings/search/SecMenu;->menuType:I

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Settings"

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method private hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SecMenu;)V
    .locals 24

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/settings/search/SecInnerMenu;

    if-eqz v1, :cond_1

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/settings/search/SecInnerMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecInnerMenu;->getFragment()Ljava/lang/String;

    move-result-object v9

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecMenu;->index:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SecMenu;->menuType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x1

    const/16 v19, -0x1

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/settings/search/SecLinkedMenu;

    if-eqz v1, :cond_0

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetPkg()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetClass()Ljava/lang/String;

    move-result-object v16

    goto :goto_0
.end method


# virtual methods
.method public addSubMenu(Lcom/android/settings/search/SecMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v0, p1, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    iget v0, v0, Lcom/android/settings/search/SecMenu;->index:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/search/SecMenu;->setIndex(I)V

    iget-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    invoke-virtual {v0}, Lcom/android/settings/search/SecMenu;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v3, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method public hasSubMenu(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/16 v30, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    :cond_0
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_0

    :cond_1
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v2, "PreferenceScreen"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " at "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    invoke-static/range {v30 .. v30}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    const/16 v25, 0x1

    :cond_4
    :goto_1
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_5

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v29

    if-le v2, v0, :cond_1c

    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_4

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    move/from16 v0, v31

    if-ne v0, v2, :cond_7

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v25, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v25, 0x1

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/settings/search/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "nonIndexableKeys: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    :cond_a
    const/16 v27, 0x1

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/settings/search/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const/16 v27, 0x0

    :cond_d
    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v26, :cond_e

    if-eqz v27, :cond_e

    move/from16 v22, v25

    :goto_2
    if-nez v22, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, ") is disabled so not indexed in "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v21

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_e
    const/16 v22, 0x0

    goto :goto_2

    :cond_f
    :try_start_4
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataEng(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataRelatedKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :cond_10
    :goto_3
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_11

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_12

    :cond_11
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_10

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_10

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v2, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v19

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_12
    :try_start_6
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_13

    new-instance v2, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v20

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_13
    :try_start_8
    new-instance v2, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v30, :cond_14

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    throw v2

    :cond_15
    :try_start_9
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    const/16 v16, 0x0

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :cond_16
    :goto_4
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_19

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_17

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_19

    :cond_17
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_16

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_16

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v2, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static/range {v30 .. v30}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_18
    const-string/jumbo v2, "intent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v16

    goto :goto_4

    :cond_19
    if-nez v16, :cond_1a

    new-instance v2, Lcom/android/settings/search/SecMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1b

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v9, 0x0

    :cond_1b
    new-instance v10, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v11, p0

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_1c
    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    instance-of v2, p0, Lcom/android/settings/search/SecInnerMenu;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/settings/search/SecInnerMenu;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/search/SecInnerMenu;->saveInnerMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    return-void

    :cond_2
    instance-of v2, p0, Lcom/android/settings/search/SecLinkedMenu;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/search/SecLinkedMenu;->saveLinkedMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Settings"

    iget-object v3, p0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SecMenu;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/search/SecMenu;->index:I

    return-void
.end method

.method public updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    if-nez p23, :cond_1

    const/4 v11, 0x4

    move/from16 v0, p22

    if-eq v0, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b19dc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b19dd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "%"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const-string/jumbo p6, ""

    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "%"

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string/jumbo p7, ""

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "docid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "_id"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "locale"

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_rank"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "data_title"

    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_title_normalized"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_title_hex"

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/settings/search/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on"

    move-object/from16 v0, p6

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on_normalized"

    move-object/from16 v0, p7

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on_hex"

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/settings/search/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_off"

    move-object/from16 v0, p8

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_off_normalized"

    move-object/from16 v0, p9

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_entries"

    move-object/from16 v0, p10

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_keywords"

    move-object/from16 v0, p15

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "class_name"

    move-object/from16 v0, p11

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "screen_title"

    move-object/from16 v0, p12

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_action"

    move-object/from16 v0, p16

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_target_package"

    move-object/from16 v0, p17

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_target_class"

    move-object/from16 v0, p18

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "icon"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "enabled"

    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "data_key_reference"

    move-object/from16 v0, p20

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "user_id"

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "menu_type"

    invoke-static/range {p22 .. p22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "menu_path"

    move-object/from16 v0, p23

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "category_id"

    move-object/from16 v0, p24

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p25, :cond_6

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p25

    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_6
    const-string/jumbo v11, "extras"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    const-string/jumbo v11, "prefs_index"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 30

    if-nez p16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip indexing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move/from16 v21, p16

    move-object/from16 v22, p17

    move/from16 v23, p18

    move/from16 v24, p19

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move-object/from16 v27, p22

    invoke-virtual/range {v2 .. v27}, Lcom/android/settings/search/SecMenu;->updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / intentTargetClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

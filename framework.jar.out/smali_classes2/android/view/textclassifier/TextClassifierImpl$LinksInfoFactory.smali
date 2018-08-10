.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinksInfoFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;,
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static avoidOverlaps(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;"
        }
    .end annotation

    new-instance v8, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;

    invoke-direct {v8}, Landroid/view/textclassifier/-$Lambda$Sy__B53nI_asuVbYEz1JE9PRAk8;-><init>()V

    invoke-static {v8}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {p0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    invoke-static {v7}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-static {v7}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v9

    if-ge v8, v9, :cond_1

    :cond_0
    invoke-static {v7}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v9

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v10

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_3

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method public static create(Landroid/content/Context;Landroid/view/textclassifier/SmartSelection;Ljava/lang/String;I)Landroid/view/textclassifier/LinksInfo;
    .locals 16

    new-instance v13, Landroid/text/method/WordIterator;

    invoke-direct {v13}, Landroid/text/method/WordIterator;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15, v14}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v13, v10}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v2}, Landroid/view/textclassifier/SmartSelection;->suggest(Ljava/lang/String;II)[I

    move-result-object v5

    const/4 v14, 0x0

    aget v7, v5, v14

    const/4 v14, 0x1

    aget v6, v5, v14

    if-ltz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v6, v14, :cond_1

    if-gt v7, v6, :cond_1

    move-object/from16 v0, p2

    invoke-static {v0, v7, v6}, Landroid/view/textclassifier/TextClassifierImpl;->-wrap0(Ljava/lang/CharSequence;II)I

    move-result v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v6, v14}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v4

    array-length v14, v4

    if-lez v14, :cond_1

    invoke-static {v4}, Landroid/view/textclassifier/TextClassifierImpl;->-wrap1([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p3

    invoke-static {v12, v0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->matches(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->hasActivityHandler(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;

    move-result-object v8

    new-instance v14, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    invoke-direct {v14, v7, v6, v8}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;-><init>(IILandroid/text/style/ClickableSpan;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v10, v2

    goto :goto_0

    :cond_2
    new-instance v14, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->avoidOverlaps(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v15}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v14
.end method

.method private static createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method private static hasActivityHandler(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$-android_view_textclassifier_TextClassifierImpl$LinksInfoFactory_24427(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v0

    return v0
.end method

.method private static matches(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "email"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    const-string/jumbo v0, "address"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "url"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

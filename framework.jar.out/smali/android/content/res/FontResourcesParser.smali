.class public Landroid/content/res/FontResourcesParser;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/FontResourcesParser$FamilyResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFileResourceEntry;,
        Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontResourcesParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v1

    return-object v1
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "font-family"

    const/4 v3, 0x2

    invoke-interface {p0, v3, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v2, "font-family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v2, "FontResourcesParser"

    const-string/jumbo v3, "Failed to find font-family tag"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v18, Lcom/android/internal/R$styleable;->FontFamily:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x3

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_4

    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    if-eqz v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->length()I

    move-result v18

    if-lez v18, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    if-eqz v18, :cond_1

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_2

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v18, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v14, v15, v6}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v18

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, "font"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static/range {p0 .. p1}, Landroid/content/res/FontResourcesParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    return-object v18

    :cond_8
    new-instance v19, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;-><init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V

    return-object v19
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v5, Lcom/android/internal/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    return-object v7

    :cond_1
    new-instance v5, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-direct {v5, v2, v4, v3}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;-><init>(Ljava/lang/String;II)V

    return-object v5
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

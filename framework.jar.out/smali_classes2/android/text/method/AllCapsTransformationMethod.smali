.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private static mapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const-string/jumbo v17, "AllCapsTransformationMethod"

    const-string/jumbo v18, "Caller did not enable length changes; not transforming text"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/16 v17, 0x0

    return-object v17

    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v17, v0

    if-nez v17, :cond_4

    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    return-object v17

    :cond_4
    new-instance v6, Landroid/icu/text/Edits;

    invoke-direct {v6}, Landroid/icu/text/Edits;-><init>()V

    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v17

    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v9, v1, v2, v6}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v10

    check-cast v10, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v17

    if-nez v17, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {v6}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v8

    move-object/from16 v15, p1

    check-cast v15, Landroid/text/Spanned;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v17, Ljava/lang/Object;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v12, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v14, v16, v17

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-ne v13, v12, :cond_6

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    :goto_1
    if-ne v11, v12, :cond_7

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    :goto_2
    invoke-virtual {v10, v14, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v8, v13}, Landroid/text/method/AllCapsTransformationMethod;->mapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v5

    goto :goto_1

    :cond_7
    invoke-static {v8, v11}, Landroid/text/method/AllCapsTransformationMethod;->mapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v4

    goto :goto_2

    :cond_8
    return-object v10
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    return-void
.end method

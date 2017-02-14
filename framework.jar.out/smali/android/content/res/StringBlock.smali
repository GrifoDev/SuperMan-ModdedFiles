.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    const/16 v2, 0xa

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 25

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_0

    return-object p1

    :cond_0
    const/4 v8, 0x0

    if-eqz p4, :cond_6

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    aget v21, p2, v8

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get11(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    add-int/lit8 v21, v8, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/content/res/AssetManager;->getCustomizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move-object v5, v13

    :cond_1
    add-int/lit8 v21, v8, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v6, v21, v22

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    if-eq v8, v9, :cond_3

    add-int/lit8 v21, v9, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    add-int/lit8 v21, v9, 0x1

    aget v22, p2, v21

    add-int v22, v22, v6

    aput v22, p2, v21

    :cond_2
    add-int/lit8 v21, v9, 0x2

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    add-int/lit8 v21, v9, 0x2

    aget v22, p2, v21

    add-int v22, v22, v6

    aput v22, p2, v21

    :cond_3
    add-int/lit8 v9, v9, 0x3

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v4, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1b

    aget v19, p2, v8

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x3

    goto :goto_2

    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x2

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    new-instance v21, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    new-instance v21, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v22, "monospace"

    invoke-direct/range {v21 .. v22}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const/high16 v22, 0x3fa00000    # 1.25f

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v22, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_d
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    new-instance v21, Landroid/text/style/SubscriptSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    new-instance v21, Landroid/text/style/SuperscriptSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_f
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    new-instance v21, Landroid/text/style/StrikethroughSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    new-instance v21, Landroid/text/style/BulletSpan;

    const/16 v22, 0xa

    invoke-direct/range {v21 .. v22}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_3

    :cond_11
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    sget-object v21, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x12

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/res/StringBlock;->mNative:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "font;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    const-string/jumbo v21, ";height="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    new-instance v21, Landroid/content/res/StringBlock$Height;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_13
    const-string/jumbo v21, ";size="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    new-instance v21, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    const-string/jumbo v21, ";fgcolor="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_15

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    const-string/jumbo v21, ";color="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_16

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    const-string/jumbo v21, ";bgcolor="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_17

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    const-string/jumbo v21, ";face="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    new-instance v21, Landroid/text/style/TypefaceSpan;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v21, "a;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    const-string/jumbo v21, ";href="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    new-instance v21, Landroid/text/style/URLSpan;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_19
    const-string/jumbo v21, "annotation;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v21, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    :goto_4
    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    const/16 v21, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_7

    const/16 v21, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-gez v12, :cond_1a

    move v12, v11

    :cond_1a
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Landroid/text/Annotation;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move/from16 v17, v12

    goto :goto_4

    :cond_1b
    new-instance v21, Landroid/text/SpannedString;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v21
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v6, -0x1000000

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "color"

    const-string/jumbo v3, "android"

    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :catch_0
    move-exception v8

    const/high16 v6, -0x1000000

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v2, v8, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v1

    iget-boolean v8, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v8, :cond_5

    const/16 v8, 0xfa

    if-le v1, v8, :cond_5

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    :cond_2
    :goto_0
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v8, :cond_3

    new-instance v8, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v8}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_13

    aget v5, v4, v6

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-ne v5, v8, :cond_6

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    :cond_5
    new-array v8, v1, [Ljava/lang/CharSequence;

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_6
    :try_start_3
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get11(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-ne v5, v8, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set1(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_8
    const-string/jumbo v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set2(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_9
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set10(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v8, "tt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set9(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v8, "big"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set0(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v8, "small"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set5(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v8, "sup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set8(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v8, "sub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set7(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v8, "strike"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set6(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set3(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v8, "marquee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set4(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v8, "cst"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set11(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_13
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v3, v4, v8, v0}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_14
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_15

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v2, v8, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v2

    :cond_15
    :try_start_4
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

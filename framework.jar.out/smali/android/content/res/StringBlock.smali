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
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 532
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 533
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 531
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 56
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 57
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 55
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 49
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 47
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    .line 411
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 413
    .local v0, "len":I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 414
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    .line 415
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 421
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 422
    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    .line 423
    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 429
    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 410
    return-void

    .line 414
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 422
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 25
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;
    .param p4, "hasCustomizedString"    # Z

    .prologue
    .line 181
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 182
    return-object p1

    .line 183
    :cond_0
    const/4 v8, 0x0

    .line 185
    .local v8, "i":I
    if-eqz p4, :cond_6

    .line 186
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    .local v14, "sb":Ljava/lang/StringBuffer;
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    .line 188
    aget v21, p2, v8

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get11(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 189
    add-int/lit8 v21, v8, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "originalString":Ljava/lang/String;
    invoke-static {v13}, Landroid/content/res/AssetManager;->getCustomizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "customizedString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 194
    .local v6, "distance":I
    if-nez v5, :cond_1

    .line 195
    move-object v5, v13

    .line 197
    :cond_1
    add-int/lit8 v21, v8, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v6, v21, v22

    .line 200
    const/4 v9, 0x0

    .line 201
    .local v9, "j":I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 202
    if-eq v8, v9, :cond_3

    .line 203
    add-int/lit8 v21, v9, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 204
    add-int/lit8 v21, v9, 0x1

    aget v22, p2, v21

    add-int v22, v22, v6

    aput v22, p2, v21

    .line 206
    :cond_2
    add-int/lit8 v21, v9, 0x2

    aget v21, p2, v21

    add-int/lit8 v22, v8, 0x2

    aget v22, p2, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 207
    add-int/lit8 v21, v9, 0x2

    aget v22, p2, v21

    add-int v22, v22, v6

    aput v22, p2, v21

    .line 210
    :cond_3
    add-int/lit8 v9, v9, 0x3

    goto :goto_1

    .line 213
    .end local v5    # "customizedString":Ljava/lang/String;
    .end local v6    # "distance":I
    .end local v9    # "j":I
    .end local v13    # "originalString":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    .line 215
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    new-instance v4, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .local v4, "buffer":Landroid/text/SpannableString;
    const/4 v8, 0x0

    .line 222
    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1b

    .line 223
    aget v19, p2, v8

    .line 228
    .local v19, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 229
    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 230
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 231
    const/16 v24, 0x21

    .line 229
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 353
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x3

    goto :goto_2

    .line 232
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 233
    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x2

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 234
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 235
    const/16 v24, 0x21

    .line 233
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 236
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 237
    new-instance v21, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 238
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 239
    const/16 v24, 0x21

    .line 237
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 240
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 241
    new-instance v21, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v22, "monospace"

    invoke-direct/range {v21 .. v22}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 243
    const/16 v24, 0x21

    .line 241
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 244
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 245
    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const/high16 v22, 0x3fa00000    # 1.25f

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 246
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 247
    const/16 v24, 0x21

    .line 245
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 248
    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 249
    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v22, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 250
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 251
    const/16 v24, 0x21

    .line 249
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 252
    :cond_d
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 253
    new-instance v21, Landroid/text/style/SubscriptSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/SubscriptSpan;-><init>()V

    .line 254
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 255
    const/16 v24, 0x21

    .line 253
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 256
    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 257
    new-instance v21, Landroid/text/style/SuperscriptSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 258
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 259
    const/16 v24, 0x21

    .line 257
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 260
    :cond_f
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 261
    new-instance v21, Landroid/text/style/StrikethroughSpan;

    invoke-direct/range {v21 .. v21}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 262
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 263
    const/16 v24, 0x21

    .line 261
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 264
    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 265
    new-instance v21, Landroid/text/style/BulletSpan;

    const/16 v22, 0xa

    invoke-direct/range {v21 .. v22}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 266
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 265
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_3

    .line 267
    :cond_11
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 268
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 269
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 270
    const/16 v24, 0x12

    .line 268
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 272
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/res/StringBlock;->mNative:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v18

    .line 274
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v21, "font;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 277
    const-string/jumbo v21, ";height="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    .local v16, "sub":Ljava/lang/String;
    if-eqz v16, :cond_13

    .line 279
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 280
    .local v15, "size":I
    new-instance v21, Landroid/content/res/StringBlock$Height;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    .line 281
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 280
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 284
    .end local v15    # "size":I
    :cond_13
    const-string/jumbo v21, ";size="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 285
    if-eqz v16, :cond_14

    .line 286
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 287
    .restart local v15    # "size":I
    new-instance v21, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 288
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 289
    const/16 v24, 0x21

    .line 287
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 292
    .end local v15    # "size":I
    :cond_14
    const-string/jumbo v21, ";fgcolor="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 293
    if-eqz v16, :cond_15

    .line 294
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    .line 295
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 296
    const/16 v24, 0x21

    .line 294
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_15
    const-string/jumbo v21, ";color="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 300
    if-eqz v16, :cond_16

    .line 301
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    .line 302
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 303
    const/16 v24, 0x21

    .line 301
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 306
    :cond_16
    const-string/jumbo v21, ";bgcolor="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 307
    if-eqz v16, :cond_17

    .line 308
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v21

    .line 309
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 310
    const/16 v24, 0x21

    .line 308
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 313
    :cond_17
    const-string/jumbo v21, ";face="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 314
    if-eqz v16, :cond_7

    .line 315
    new-instance v21, Landroid/text/style/TypefaceSpan;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 317
    const/16 v24, 0x21

    .line 315
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 319
    .end local v16    # "sub":Ljava/lang/String;
    :cond_18
    const-string/jumbo v21, "a;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 322
    const-string/jumbo v21, ";href="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 323
    .restart local v16    # "sub":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 324
    new-instance v21, Landroid/text/style/URLSpan;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 326
    const/16 v24, 0x21

    .line 324
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 328
    .end local v16    # "sub":Ljava/lang/String;
    :cond_19
    const-string/jumbo v21, "annotation;"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 329
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v11

    .line 332
    .local v11, "len":I
    const/16 v21, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .local v17, "t":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    .line 333
    const/16 v21, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 334
    .local v7, "eq":I
    if-ltz v7, :cond_7

    .line 338
    const/16 v21, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 339
    .local v12, "next":I
    if-gez v12, :cond_1a

    .line 340
    move v12, v11

    .line 343
    :cond_1a
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "key":Ljava/lang/String;
    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 346
    .local v20, "value":Ljava/lang/String;
    new-instance v21, Landroid/text/Annotation;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    add-int/lit8 v22, v8, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v8, 0x2

    aget v23, p2, v23

    add-int/lit8 v23, v23, 0x1

    .line 348
    const/16 v24, 0x21

    .line 346
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 332
    move/from16 v17, v12

    goto :goto_4

    .line 355
    .end local v7    # "eq":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "len":I
    .end local v12    # "next":I
    .end local v17    # "t":I
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_1b
    new-instance v21, Landroid/text/SpannedString;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v21
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 373
    const/high16 v6, -0x1000000

    .line 375
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 378
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v0, "color"

    const-string/jumbo v3, "android"

    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 380
    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    .line 381
    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 382
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 383
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 385
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 397
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 398
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0

    .line 390
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 391
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v6, -0x1000000

    goto :goto_0

    .line 400
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
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
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 435
    const/4 v2, 0x0

    return-object v2

    .line 438
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 439
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 441
    .local v0, "end":I
    if-gez v0, :cond_1

    .line 442
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 444
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

    .prologue
    .line 156
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 159
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 154
    :cond_0
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    .line 159
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 157
    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "idx"    # I

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    .line 66
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v2, v8, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .local v2, "res":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    monitor-exit p0

    .line 68
    return-object v2

    .line 70
    .end local v2    # "res":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v8, :cond_1

    .line 71
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .restart local v2    # "res":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    monitor-exit p0

    .line 73
    return-object v2

    .line 76
    .end local v2    # "res":Ljava/lang/CharSequence;
    :cond_1
    :try_start_2
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v1

    .line 77
    .local v1, "num":I
    iget-boolean v8, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v8, :cond_5

    const/16 v8, 0xfa

    if-le v1, v8, :cond_5

    .line 78
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 83
    .end local v1    # "num":I
    :cond_2
    :goto_0
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "str":Ljava/lang/String;
    move-object v2, v3

    .line 85
    .restart local v2    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v4

    .line 88
    .local v4, "style":[I
    if-eqz v4, :cond_14

    .line 89
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v8, :cond_3

    .line 90
    new-instance v8, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v8}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 97
    .local v0, "hasCustomizedString":Z
    const/4 v6, 0x0

    .local v6, "styleIndex":I
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_13

    .line 98
    aget v5, v4, v6

    .line 100
    .local v5, "styleId":I
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-ne v5, v8, :cond_6

    .line 97
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 80
    .end local v0    # "hasCustomizedString":Z
    .end local v2    # "res":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "style":[I
    .end local v5    # "styleId":I
    .end local v6    # "styleIndex":I
    .restart local v1    # "num":I
    :cond_5
    new-array v8, v1, [Ljava/lang/CharSequence;

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    .end local v1    # "num":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 101
    .restart local v0    # "hasCustomizedString":Z
    .restart local v2    # "res":Ljava/lang/CharSequence;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "style":[I
    .restart local v5    # "styleId":I
    .restart local v6    # "styleIndex":I
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

    .line 102
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    .line 103
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    .line 104
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    .line 105
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    .line 110
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->-get11(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-ne v5, v8, :cond_7

    .line 111
    const/4 v0, 0x1

    .line 112
    goto :goto_2

    .line 116
    :cond_7
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "styleTag":Ljava/lang/String;
    const-string/jumbo v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 119
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set1(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    .line 120
    :cond_8
    const-string/jumbo v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 121
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set2(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    .line 122
    :cond_9
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 123
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set10(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 124
    :cond_a
    const-string/jumbo v8, "tt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 125
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set9(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 126
    :cond_b
    const-string/jumbo v8, "big"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 127
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set0(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 128
    :cond_c
    const-string/jumbo v8, "small"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 129
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set5(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 130
    :cond_d
    const-string/jumbo v8, "sup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 131
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set8(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 132
    :cond_e
    const-string/jumbo v8, "sub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 133
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set7(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 134
    :cond_f
    const-string/jumbo v8, "strike"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 135
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set6(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 136
    :cond_10
    const-string/jumbo v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 137
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set3(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 138
    :cond_11
    const-string/jumbo v8, "marquee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 139
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set4(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 140
    :cond_12
    const-string/jumbo v8, "cst"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 141
    const/4 v0, 0x1

    .line 142
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->-set11(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .line 146
    .end local v5    # "styleId":I
    .end local v7    # "styleTag":Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v3, v4, v8, v0}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    .end local v0    # "hasCustomizedString":Z
    .end local v6    # "styleIndex":I
    :cond_14
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_15

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v2, v8, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    .line 150
    return-object v2

    .line 149
    :cond_15
    :try_start_4
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

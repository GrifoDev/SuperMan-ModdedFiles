.class public abstract Lcom/samsung/android/widget/SemAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "SemAbstractIndexer.java"


# static fields
.field private static final DIGIT_CHAR:C = '#'

.field public static final FAVORITE_CHAR:C = '\u2606'

.field private static final GROUP_CHAR:Ljava/lang/String; = "\ud83d\udc65\ufe0e"

.field private static final GROUP_CHECKER:C = '\ud83d'

.field protected static final INDEXSCROLL_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field protected static final INDEXSCROLL_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"

.field private static final SYMBOL_BASE_CHAR:C = '!'

.field private static final SYMBOL_CHAR:C = '&'


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field private mBundle:Landroid/os/Bundle;

.field private mCachingValue:[I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDigitItemCount:I

.field private mFavoriteItemCount:I

.field private mGroupItemCount:I

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileItemCount:I

.field private mUseDigitIndex:Z

.field private mUseFavoriteIndex:Z

.field private mUseGroupIndex:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method private getBundleInfo()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_titles"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_counts"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v3, v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v0, v7, v3

    const-string/jumbo v7, "SemAbstractIndexer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Get index info from bundle ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x2606

    if-ne v6, v7, :cond_3

    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v0, v7

    :cond_0
    :goto_1
    move v4, v1

    :goto_2
    array-length v7, v5

    if-ge v4, v7, :cond_1

    aget-object v7, v5, v4

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    aget v7, v2, v4

    add-int/2addr v0, v7

    move v1, v4

    :cond_1
    const-string/jumbo v7, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v8, v9

    aput v8, v7, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const v7, 0xd83d

    if-ne v6, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v0, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getPositionForString(Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    const/16 v18, 0x0

    return v18

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    :cond_2
    return v3

    :cond_3
    const/4 v15, 0x0

    move v6, v3

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v17, p1

    move v7, v8

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v0, v11, :cond_b

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    :cond_4
    :goto_0
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v18, 0x26

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const-string/jumbo v17, "!"

    :cond_5
    const/16 v18, 0x2606

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    const/16 v18, 0x23

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move v15, v6

    :cond_7
    add-int v18, v6, v15

    div-int/lit8 v11, v18, 0x2

    :goto_2
    if-lt v11, v15, :cond_9

    if-ge v11, v6, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_8
    if-gt v11, v15, :cond_f

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual {v2, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    return v11

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-le v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v13, v0, :cond_c

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v10, v0, :cond_4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_0

    :cond_d
    const v18, 0xd83d

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v18, 0x2606

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    const/16 v18, 0x26

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    :cond_11
    :goto_4
    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_16

    if-gez v5, :cond_14

    add-int/lit8 v15, v11, 0x1

    if-lt v15, v3, :cond_15

    move v11, v3

    goto/16 :goto_3

    :cond_13
    const/16 v18, 0x23

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    goto :goto_4

    :cond_14
    move v6, v11

    :cond_15
    :goto_5
    add-int v18, v15, v6

    div-int/lit8 v11, v18, 0x2

    goto/16 :goto_2

    :cond_16
    if-eq v15, v11, :cond_9

    move v6, v11

    goto :goto_5
.end method

.method private initIndexer(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string/jumbo v2, "\ud83d\udc65\ufe0e"

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public cacheIndexInfo()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "indexscroll_index_titles"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "indexscroll_index_counts"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    return-void

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V

    return-void
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBundle()Landroid/os/Bundle;
.end method

.method public getCachingValue(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCurrentLang()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method public isUseDigitIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method protected onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setDigitItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public setFavoriteItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public setGroupItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public setMultiLangIndexer(I)V
    .locals 6

    const/16 v4, 0x2606

    const/16 v5, 0x26

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0xd83d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProfileItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

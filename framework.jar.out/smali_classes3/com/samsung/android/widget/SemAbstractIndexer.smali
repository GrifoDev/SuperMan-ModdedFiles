.class public abstract Lcom/samsung/android/widget/SemAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "SemAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;,
        Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    }
.end annotation


# static fields
.field private static final DIGIT_CHAR:C = '#'

.field public static final FAVORITE_CHAR:C = '\u2606'

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

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDigitItemCount:I

.field private mFavoriteItemCount:I

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


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    return-void
.end method

.method private getBundleInfo()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_titles"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_counts"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v0, v7, v3

    const/16 v7, 0x2606

    if-ne v6, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v0, v7

    :cond_0
    move v4, v1

    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_1

    aget-object v7, v5, v4

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3

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
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private isJapaneseIndex(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3041

    if-le p1, v1, :cond_0

    const/16 v1, 0x30fa

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isKoreanLocaleLaguage()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
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

.method public getCurrentLangEndIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v0, 0xac00

    const/16 v1, 0x24c

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    packed-switch v3, :pswitch_data_0

    const/16 v2, 0x3131

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_0
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3134

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x3139

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x3141

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_a
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_b
    const/16 v2, 0x3147

    goto :goto_0

    :pswitch_c
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_d
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_e
    const/16 v2, 0x314a

    goto :goto_0

    :pswitch_f
    const/16 v2, 0x314b

    goto :goto_0

    :pswitch_10
    const/16 v2, 0x314c

    goto :goto_0

    :pswitch_11
    const/16 v2, 0x314d

    goto :goto_0

    :pswitch_12
    const/16 v2, 0x314e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    return-object v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    const/16 v17, 0x0

    return-object v17

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string/jumbo v18, "indexscroll_index_titles"

    invoke-virtual/range {v17 .. v18}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string/jumbo v18, "indexscroll_index_counts"

    invoke-virtual/range {v17 .. v18}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    const/16 v17, 0x0

    return-object v17

    :cond_2
    if-nez p1, :cond_9

    const-string/jumbo v2, ""

    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    const/4 v3, 0x0

    const/4 v11, -0x1

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-result-object v12

    iget v10, v12, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    iget-boolean v15, v12, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    move-object/from16 v17, v0

    aput v10, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isJapaneseIndex(C)Z

    move-result v7

    if-gez v10, :cond_3

    neg-int v10, v10

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v15, :cond_8

    :cond_4
    new-instance v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    invoke-direct {v6}, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;-><init>()V

    iput-boolean v15, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    iput v10, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isTaiwanLocale()Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v4

    if-eqz v9, :cond_6

    if-nez v4, :cond_6

    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    iput v10, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mLastPosition:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    iget v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    :cond_7
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v17

    if-nez v17, :cond_5

    if-eqz v15, :cond_b

    const/4 v3, 0x1

    move v11, v10

    :cond_b
    if-nez v7, :cond_5

    if-nez v15, :cond_5

    if-eqz v3, :cond_5

    iput v11, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v13

    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return-object v13

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v13, 0x0

    return-object v13

    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ge v0, v13, :cond_2

    const/4 v13, 0x0

    return-object v13

    :cond_2
    if-nez p1, :cond_6

    const-string/jumbo v1, ""

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v6

    iget-object v13, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v7, v13, v6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v3, v13, :cond_7

    const/4 v12, 0x0

    const/4 v8, -0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-result-object v9

    iget v8, v9, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    iget-boolean v12, v9, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    if-gez v8, :cond_3

    neg-int v8, v8

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v12, :cond_5

    :cond_4
    new-instance v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    invoke-direct {v4}, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;-><init>()V

    iput-boolean v12, v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    iput v8, v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v1, p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v10

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
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
    .locals 3

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(I)V

    return-object v20

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3

    :cond_2
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(I)V

    return-object v20

    :cond_3
    const/16 v17, 0x0

    move v6, v3

    const/4 v9, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v19, p1

    move v7, v8

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v0, v13, :cond_c

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v17

    :cond_4
    :goto_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/4 v10, 0x0

    const/16 v20, 0x26

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const-string/jumbo v19, "!"

    :cond_5
    const/16 v20, 0x2606

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v17, v0

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    move/from16 v20, v0

    sub-int v6, v6, v20

    const/16 v20, 0x23

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move/from16 v17, v6

    :cond_7
    add-int v20, v6, v17

    div-int/lit8 v13, v20, 0x2

    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_9

    if-ge v13, v6, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_10

    :cond_8
    move/from16 v0, v17

    if-gt v13, v0, :cond_f

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    invoke-virtual {v2, v7, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    if-ge v13, v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    :cond_b
    :goto_4
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(IZ)V

    return-object v20

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-lez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    if-le v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v15, v0, :cond_d

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v12, v0, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v21, v0

    add-int v17, v20, v21

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v20, 0x2606

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    const/16 v20, 0x26

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    :cond_11
    :goto_5
    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_18

    if-gez v5, :cond_15

    add-int/lit8 v17, v13, 0x1

    if-eqz v10, :cond_13

    if-eqz v13, :cond_9

    :cond_13
    move/from16 v0, v17

    if-lt v0, v3, :cond_17

    move v13, v3

    goto/16 :goto_3

    :cond_14
    const/16 v20, 0x23

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    goto :goto_5

    :cond_15
    if-eqz v10, :cond_16

    if-nez v13, :cond_16

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_16
    move v6, v13

    :cond_17
    :goto_6
    add-int v20, v17, v6

    div-int/lit8 v13, v20, 0x2

    goto/16 :goto_2

    :cond_18
    move/from16 v0, v17

    if-eq v0, v13, :cond_9

    move v6, v13

    goto :goto_6

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_4
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
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

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

.method public isCurrentLanguagePosition(I)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v2, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
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

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xac00

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd7a3

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public setDigitItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 7

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isTaiwanLocale()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "\u2606"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "&"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
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

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

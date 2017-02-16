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
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 58
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 61
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 326
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 327
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    .line 328
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    .line 329
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 153
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 154
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p2, "profileCount"    # I
    .param p3, "favoriteCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 187
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 58
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 61
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 326
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 327
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    .line 328
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    .line 329
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 189
    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 190
    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 3
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 58
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 61
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 326
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 327
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    .line 328
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    .line 329
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    .line 168
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 169
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 170
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 171
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 172
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 3
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I
    .param p3, "profileCount"    # I
    .param p4, "favoriteCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 207
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string/jumbo v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->debug:Z

    .line 58
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 61
    iput v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 326
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 327
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    .line 328
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    .line 329
    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 209
    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 210
    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 211
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 207
    return-void
.end method

.method private getBundleInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 850
    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_titles"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, "sections":[Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "indexscroll_index_counts"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 852
    .local v2, "counts":[I
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 853
    .local v0, "basePosition":I
    const/4 v1, 0x0

    .line 855
    .local v1, "baseSectionIndex":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v3, v7, :cond_4

    .line 856
    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 859
    .local v6, "targetChar":C
    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v0, v7, v3

    .line 862
    const/16 v7, 0x2606

    if-ne v6, v7, :cond_0

    .line 863
    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v0, v7

    .line 866
    :cond_0
    move v4, v1

    .local v4, "sectionIndex":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_1

    .line 867
    aget-object v7, v5, v4

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3

    .line 868
    aget v7, v2, v4

    add-int/2addr v0, v7

    .line 869
    move v1, v4

    .line 874
    :cond_1
    const-string/jumbo v7, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 875
    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v8, v9

    aput v8, v7, v3

    .line 855
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 866
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 849
    .end local v4    # "sectionIndex":I
    .end local v6    # "targetChar":C
    :cond_4
    return-void
.end method

.method private isJapaneseIndex(C)Z
    .locals 2
    .param p1, "index"    # C

    .prologue
    const/4 v0, 0x0

    .line 526
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

    .prologue
    .line 549
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

    .line 550
    const/4 v0, 0x1

    return v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    .prologue
    .line 543
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    return v0

    .line 546
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "indexString"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBundle()Landroid/os/Bundle;
.end method

.method public getCachingValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 230
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCurrentLang()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 817
    const v0, 0xac00

    .line 818
    .local v0, "BASE_CODE":I
    const/16 v1, 0x24c

    .line 819
    .local v1, "CHOSUNG":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    .line 821
    .local v3, "keyValue":I
    packed-switch v3, :pswitch_data_0

    .line 841
    const/16 v2, 0x3131

    .line 843
    .local v2, "keyCode":I
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

    .line 822
    .end local v2    # "keyCode":I
    :pswitch_0
    const/16 v2, 0x3131

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 823
    .end local v2    # "keyCode":I
    :pswitch_1
    const/16 v2, 0x3131

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 824
    .end local v2    # "keyCode":I
    :pswitch_2
    const/16 v2, 0x3134

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 825
    .end local v2    # "keyCode":I
    :pswitch_3
    const/16 v2, 0x3137

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 826
    .end local v2    # "keyCode":I
    :pswitch_4
    const/16 v2, 0x3137

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 827
    .end local v2    # "keyCode":I
    :pswitch_5
    const/16 v2, 0x3139

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 828
    .end local v2    # "keyCode":I
    :pswitch_6
    const/16 v2, 0x3141

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 829
    .end local v2    # "keyCode":I
    :pswitch_7
    const/16 v2, 0x3142

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 830
    .end local v2    # "keyCode":I
    :pswitch_8
    const/16 v2, 0x3142

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 831
    .end local v2    # "keyCode":I
    :pswitch_9
    const/16 v2, 0x3145

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 832
    .end local v2    # "keyCode":I
    :pswitch_a
    const/16 v2, 0x3145

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 833
    .end local v2    # "keyCode":I
    :pswitch_b
    const/16 v2, 0x3147

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 834
    .end local v2    # "keyCode":I
    :pswitch_c
    const/16 v2, 0x3148

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 835
    .end local v2    # "keyCode":I
    :pswitch_d
    const/16 v2, 0x3148

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 836
    .end local v2    # "keyCode":I
    :pswitch_e
    const/16 v2, 0x314a

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 837
    .end local v2    # "keyCode":I
    :pswitch_f
    const/16 v2, 0x314b

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 838
    .end local v2    # "keyCode":I
    :pswitch_10
    const/16 v2, 0x314c

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 839
    .end local v2    # "keyCode":I
    :pswitch_11
    const/16 v2, 0x314d

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 840
    .end local v2    # "keyCode":I
    :pswitch_12
    const/16 v2, 0x314e

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 821
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

    .prologue
    .line 424
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;
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

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
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

    .prologue
    .line 447
    const/4 v7, 0x0

    .line 449
    .local v7, "isJapanese":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v17

    if-nez v17, :cond_0

    .line 450
    const/16 v17, 0x0

    return-object v17

    .line 451
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v8

    .line 452
    .local v8, "itemCount":I
    if-nez v8, :cond_1

    .line 454
    const/16 v17, 0x0

    return-object v17

    .line 457
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    .line 458
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

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string/jumbo v18, "indexscroll_index_counts"

    invoke-virtual/range {v17 .. v18}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    .line 458
    if-eqz v17, :cond_2

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    .line 461
    const/16 v17, 0x0

    return-object v17

    .line 464
    :cond_2
    if-nez p1, :cond_9

    const-string/jumbo v2, ""

    .line 465
    .local v2, "baseString":Ljava/lang/String;
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v13, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, "charExistedOfCurrentLang":Z
    const/4 v11, -0x1

    .line 471
    .local v11, "posOfPreviousExisted":I
    const/16 v16, 0x0

    .end local v7    # "isJapanese":Z
    .local v16, "sectionIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 472
    const/4 v15, 0x0

    .line 473
    .local v15, "sectionFound":Z
    const/4 v10, -0x1

    .line 475
    .local v10, "posFound":I
    const/4 v9, 0x0

    .line 477
    .local v9, "lastSectionFound":Z
    const/4 v12, 0x0

    .line 478
    .local v12, "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
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

    .line 479
    .local v14, "searchString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-result-object v12

    .line 480
    .local v12, "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    iget v10, v12, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    .line 481
    iget-boolean v15, v12, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    .line 482
    .local v15, "sectionFound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    move-object/from16 v17, v0

    aput v10, v17, v16

    .line 483
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

    .line 485
    .local v7, "isJapanese":Z
    if-gez v10, :cond_3

    .line 486
    neg-int v10, v10

    .line 489
    :cond_3
    if-eqz p2, :cond_4

    if-eqz v15, :cond_8

    .line 490
    :cond_4
    new-instance v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    invoke-direct {v6}, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;-><init>()V

    .line 491
    .local v6, "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    iput-boolean v15, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    .line 492
    iput v10, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    .line 493
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isTaiwanLocale()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 502
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v4

    .line 503
    .local v4, "currentLang":I
    if-eqz v9, :cond_6

    if-nez v4, :cond_6

    .line 474
    const/16 v17, -0x1

    .line 505
    move/from16 v0, v17

    iput v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    .line 506
    iput v10, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mLastPosition:I

    .line 508
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 512
    iget v0, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartPosition:I

    .line 515
    :cond_7
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v4    # "currentLang":I
    .end local v6    # "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 464
    .end local v2    # "baseString":Ljava/lang/String;
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v9    # "lastSectionFound":Z
    .end local v10    # "posFound":I
    .end local v11    # "posOfPreviousExisted":I
    .end local v12    # "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .end local v13    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    .end local v14    # "searchString":Ljava/lang/String;
    .end local v15    # "sectionFound":Z
    .end local v16    # "sectionIndex":I
    .local v7, "isJapanese":Z
    :cond_9
    move-object/from16 v2, p1

    .restart local v2    # "baseString":Ljava/lang/String;
    goto/16 :goto_0

    .line 493
    .restart local v3    # "charExistedOfCurrentLang":Z
    .restart local v6    # "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    .local v7, "isJapanese":Z
    .restart local v9    # "lastSectionFound":Z
    .restart local v10    # "posFound":I
    .restart local v11    # "posOfPreviousExisted":I
    .restart local v12    # "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .restart local v13    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    .restart local v14    # "searchString":Ljava/lang/String;
    .restart local v15    # "sectionFound":Z
    .restart local v16    # "sectionIndex":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v17

    if-nez v17, :cond_5

    .line 494
    if-eqz v15, :cond_b

    .line 495
    const/4 v3, 0x1

    .line 496
    move v11, v10

    .line 498
    :cond_b
    if-nez v7, :cond_5

    if-nez v15, :cond_5

    if-eqz v3, :cond_5

    .line 499
    iput v11, v6, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 519
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v6    # "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    .end local v7    # "isJapanese":Z
    .end local v9    # "lastSectionFound":Z
    .end local v10    # "posFound":I
    .end local v11    # "posOfPreviousExisted":I
    .end local v12    # "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .end local v14    # "searchString":Ljava/lang/String;
    .end local v15    # "sectionFound":Z
    .end local v16    # "sectionIndex":I
    :catch_0
    move-exception v5

    .line 520
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v13

    .line 518
    .restart local v3    # "charExistedOfCurrentLang":Z
    .restart local v11    # "posOfPreviousExisted":I
    .restart local v16    # "sectionIndex":I
    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 15
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
    .param p3, "aDepth"    # I
    .param p4, "aIndex"    # I
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

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v13

    if-nez v13, :cond_0

    .line 569
    const/4 v13, 0x0

    return-object v13

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v5

    .line 571
    .local v5, "itemCount":I
    if-nez v5, :cond_1

    .line 573
    const/4 v13, 0x0

    return-object v13

    .line 576
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ge v0, v13, :cond_2

    .line 577
    const/4 v13, 0x0

    return-object v13

    .line 579
    :cond_2
    if-nez p1, :cond_6

    const-string/jumbo v1, ""

    .line 580
    .local v1, "baseString":Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v10, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    .line 583
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v6

    .line 584
    .local v6, "lLangInd":I
    iget-object v13, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v7, v13, v6

    .line 585
    .local v7, "lOtherLangString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v3, v13, :cond_7

    .line 586
    const/4 v12, 0x0

    .line 587
    .local v12, "sectionFound":Z
    const/4 v8, -0x1

    .line 589
    .local v8, "posFound":I
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

    .line 590
    .local v11, "searchString":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-result-object v9

    .line 591
    .local v9, "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    iget v8, v9, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    .line 592
    iget-boolean v12, v9, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    .line 594
    .local v12, "sectionFound":Z
    if-gez v8, :cond_3

    .line 595
    neg-int v8, v8

    .line 597
    :cond_3
    if-eqz p2, :cond_4

    if-eqz v12, :cond_5

    .line 598
    :cond_4
    new-instance v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    invoke-direct {v4}, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;-><init>()V

    .line 599
    .local v4, "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    iput-boolean v12, v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    .line 600
    iput v8, v4, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    .line 601
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

    .line 602
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v4    # "indexInfo":Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 579
    .end local v1    # "baseString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    .end local v8    # "posFound":I
    .end local v9    # "pr":Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .end local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    .end local v11    # "searchString":Ljava/lang/String;
    .end local v12    # "sectionFound":Z
    :cond_6
    move-object/from16 v1, p1

    .restart local v1    # "baseString":Ljava/lang/String;
    goto :goto_0

    .line 605
    .restart local v3    # "i":I
    .restart local v6    # "lLangInd":I
    .restart local v7    # "lOtherLangString":Ljava/lang/String;
    .restart local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    :goto_2
    return-object v10

    .line 606
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 375
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 376
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 377
    .local v1, "lIndexVal":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 378
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 380
    .end local v1    # "lIndexVal":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 384
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
    .locals 22
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 635
    .local v2, "alphaMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    .line 637
    .local v3, "count":I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 638
    :cond_0
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(I)V

    return-object v20

    .line 640
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3

    .line 641
    :cond_2
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(I)V

    return-object v20

    .line 643
    :cond_3
    const/16 v17, 0x0

    .line 644
    .local v17, "start":I
    move v6, v3

    .line 646
    .local v6, "end":I
    const/4 v9, 0x0

    .line 647
    .local v9, "matchFound":Z
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 648
    .local v8, "letter":C
    move-object/from16 v19, p1

    .line 649
    .local v19, "targetLetter":Ljava/lang/String;
    move v7, v8

    .line 651
    .local v7, "key":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .local v13, "pos":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v0, v13, :cond_c

    .line 660
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 684
    :cond_4
    :goto_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 686
    .local v18, "targetChar":C
    const/4 v10, 0x0

    .line 703
    .local v10, "mflag":Z
    const/16 v20, 0x26

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 704
    const-string/jumbo v19, "!"

    .line 706
    :cond_5
    const/16 v20, 0x2606

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v17, v0

    .line 716
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    move/from16 v20, v0

    sub-int v6, v6, v20

    .line 717
    const/16 v20, 0x23

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 718
    move/from16 v17, v6

    .line 721
    :cond_7
    add-int v20, v6, v17

    div-int/lit8 v13, v20, 0x2

    .line 722
    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_9

    if-ge v13, v6, :cond_9

    .line 724
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "curName":Ljava/lang/String;
    if-eqz v4, :cond_8

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_10

    .line 726
    :cond_8
    move/from16 v0, v17

    if-gt v13, v0, :cond_f

    .line 779
    .end local v4    # "curName":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 780
    invoke-virtual {v2, v7, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    :cond_a
    if-ge v13, v3, :cond_b

    .line 783
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 785
    .restart local v4    # "curName":Ljava/lang/String;
    if-eqz v4, :cond_b

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 789
    .end local v4    # "curName":Ljava/lang/String;
    .end local v9    # "matchFound":Z
    :cond_b
    :goto_4
    new-instance v20, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;-><init>(IZ)V

    return-object v20

    .line 664
    .end local v10    # "mflag":Z
    .end local v18    # "targetChar":C
    .restart local v9    # "matchFound":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 666
    .local v16, "sectionIndex":I
    if-lez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    if-le v7, v0, :cond_d

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 668
    .local v14, "prevLetter":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 669
    .local v15, "prevLetterPos":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v15, v0, :cond_d

    .line 670
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 676
    .end local v14    # "prevLetter":I
    .end local v15    # "prevLetterPos":I
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

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 678
    .local v11, "nextLetter":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 679
    .local v12, "nextLetterPos":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v12, v0, :cond_4

    .line 680
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_0

    .line 711
    .end local v11    # "nextLetter":I
    .end local v12    # "nextLetterPos":I
    .end local v16    # "sectionIndex":I
    .restart local v10    # "mflag":Z
    .restart local v18    # "targetChar":C
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

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v21, v0

    add-int v17, v20, v21

    goto/16 :goto_1

    .line 729
    .restart local v4    # "curName":Ljava/lang/String;
    :cond_f
    add-int/lit8 v13, v13, -0x1

    .line 730
    goto/16 :goto_2

    .line 733
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 734
    .local v5, "diff":I
    const/16 v20, 0x2606

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    const/16 v20, 0x26

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 735
    :cond_11
    :goto_5
    const/4 v5, 0x1

    .line 737
    :cond_12
    if-eqz v5, :cond_18

    .line 749
    if-gez v5, :cond_15

    .line 750
    add-int/lit8 v17, v13, 0x1

    .line 751
    if-eqz v10, :cond_13

    if-eqz v13, :cond_9

    .line 755
    :cond_13
    move/from16 v0, v17

    if-lt v0, v3, :cond_17

    .line 756
    move v13, v3

    .line 757
    goto/16 :goto_3

    .line 734
    :cond_14
    const/16 v20, 0x23

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    goto :goto_5

    .line 760
    :cond_15
    if-eqz v10, :cond_16

    if-nez v13, :cond_16

    .line 761
    const/4 v13, 0x1

    .line 762
    goto/16 :goto_3

    .line 765
    :cond_16
    move v6, v13

    .line 777
    :cond_17
    :goto_6
    add-int v20, v17, v6

    div-int/lit8 v13, v20, 0x2

    goto/16 :goto_2

    .line 769
    :cond_18
    move/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 774
    move v6, v13

    goto :goto_6

    .line 786
    .end local v5    # "diff":I
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .local v9, "matchFound":Z
    goto/16 :goto_4
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 390
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 391
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

    .line 393
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 394
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    .line 395
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    .line 397
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 403
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 404
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 389
    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 532
    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v2, :cond_4

    .line 533
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    if-eqz v2, :cond_2

    .line 534
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 536
    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 539
    :cond_4
    return v1
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method public isUseDigitIndex()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 886
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 885
    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 896
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 897
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 898
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 895
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 800
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 801
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 804
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xac00

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd7a3

    if-gt v0, v1, :cond_1

    .line 805
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 807
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 808
    const/4 v0, 0x1

    return v0

    .line 810
    :cond_2
    return v2
.end method

.method public setDigitItem(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 307
    if-ltz p1, :cond_0

    .line 308
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    .line 310
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 306
    :cond_0
    return-void
.end method

.method public setFavoriteItem(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 294
    if-ltz p1, :cond_0

    .line 295
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    .line 297
    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 293
    :cond_0
    return-void
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 7
    .param p1, "aLangIndex"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isTaiwanLocale()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 248
    .local v1, "isTaiwan":Ljava/lang/Boolean;
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    if-eqz v4, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "\u2606"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "indexerString":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :goto_0
    const/4 v3, 0x0

    .local v3, "langIndex":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangStartIndex:I

    .line 260
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 252
    .end local v0    # "indexerString":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "langIndex":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "&"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0    # "indexerString":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 265
    .restart local v2    # "j":I
    .restart local v3    # "langIndex":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLangEndIndex:I

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 268
    .end local v2    # "j":I
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setProfileItem(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 283
    if-ltz p1, :cond_0

    .line 284
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    .line 282
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 919
    return-void
.end method

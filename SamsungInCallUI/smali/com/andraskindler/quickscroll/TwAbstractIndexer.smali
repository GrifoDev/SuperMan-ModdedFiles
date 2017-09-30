.class public abstract Lcom/andraskindler/quickscroll/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;,
        Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# static fields
.field public static final FAVORITE_CHAR:C = '\u2606'

.field private static final SYMBOL_BASE_CHAR:C = '!'

.field public static final SYMBOL_CHAR:C = '&'

.field public static final SYMBOL_FOR_ALL_CHAR:C = '\u2200'


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mEnableFavoriteIndex:Z

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


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    iput p2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    iput p3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    return-void
.end method

.method private isJapaneseIndex(C)Z
    .locals 1

    const/16 v0, 0x3041

    if-le p1, v0, :cond_0

    const/16 v0, 0x30fa

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    return v0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v4, 0x3148

    const/16 v3, 0x3145

    const/16 v2, 0x3142

    const/16 v1, 0x3137

    const/16 v0, 0x3131

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xac00

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x24c

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v0, 0x3134

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x3139

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x3141

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    move v0, v3

    goto :goto_0

    :pswitch_9
    move v0, v3

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x3147

    goto :goto_0

    :pswitch_b
    move v0, v4

    goto :goto_0

    :pswitch_c
    move v0, v4

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x314a

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x314b

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x314c

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x314d

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x314e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

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
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onBeginTransaction()V

    const/4 v0, -0x1

    move v5, v1

    :goto_1
    iget v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v5, v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-result-object v6

    iget v3, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->position:I

    iget-boolean v6, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->exactMatch:Z

    if-eqz p2, :cond_3

    if-ne v6, v4, :cond_7

    :cond_3
    new-instance v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    invoke-direct {v7}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;-><init>()V

    iput-boolean v6, v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mExists:Z

    iput v3, v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    invoke-virtual {p0, v5}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v6, :cond_4

    move v0, v3

    move v1, v4

    :cond_4
    if-nez v6, :cond_5

    if-eqz v1, :cond_5

    iput v0, v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_5
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLang()I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v5

    iput-object v3, v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-ne v3, v5, :cond_6

    iget v3, v7, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    :cond_6
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-lt p4, v6, :cond_0

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onBeginTransaction()V

    invoke-virtual {p0, p4}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-result-object v4

    iget v1, v4, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->position:I

    iget-boolean v4, v4, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->exactMatch:Z

    if-gez v1, :cond_3

    neg-int v1, v1

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v6, :cond_5

    :cond_4
    new-instance v5, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    invoke-direct {v5}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;-><init>()V

    iput-boolean v4, v5, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mExists:Z

    iput v1, v5, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;
    .locals 13

    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    invoke-direct {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    invoke-direct {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    invoke-virtual {v8, v9, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v2, v3, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v3, 0x0

    const/4 v5, 0x2

    if-lt v1, v5, :cond_16

    const/16 v5, 0x2606

    if-eq v10, v5, :cond_16

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5, v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_16

    const/4 v3, 0x1

    move v7, v3

    :goto_2
    const/16 v3, 0x26

    if-ne v10, v3, :cond_15

    const-string v3, "!"

    move-object v6, v3

    :goto_3
    const/16 v3, 0x2606

    if-ne v10, v3, :cond_b

    iget v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    :cond_4
    :goto_4
    add-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    move v12, v3

    move v3, v2

    move v2, v12

    :goto_5
    if-lt v2, v3, :cond_6

    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v11, ""

    if-ne v5, v11, :cond_d

    :cond_5
    if-gt v2, v3, :cond_c

    :cond_6
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_7
    if-ge v2, v1, :cond_13

    invoke-virtual {p0, v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0, v0, v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_7
    new-instance v1, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    invoke-direct {v1, v2, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_9

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-le v9, v3, :cond_9

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/high16 v5, -0x80000000

    invoke-virtual {v8, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_9
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v9, v3, :cond_17

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/high16 v3, -0x80000000

    invoke-virtual {v8, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_17

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v12, v2

    move v2, v0

    move v0, v12

    goto/16 :goto_1

    :cond_a
    if-eqz v5, :cond_16

    if-nez v6, :cond_16

    const/4 v3, 0x1

    move v7, v3

    goto/16 :goto_2

    :cond_b
    iget v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    add-int/2addr v2, v3

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p0, v5, v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v11, 0x2606

    if-ne v10, v11, :cond_e

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_12

    if-gez v5, :cond_10

    add-int/lit8 v3, v2, 0x1

    if-eqz v7, :cond_f

    if-eqz v2, :cond_6

    :cond_f
    if-lt v3, v1, :cond_14

    move v2, v1

    goto/16 :goto_6

    :cond_10
    if-eqz v7, :cond_11

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_11
    move v0, v2

    move v2, v3

    :goto_8
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    move v12, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_5

    :cond_12
    if-eq v3, v2, :cond_6

    move v0, v2

    move v2, v3

    goto :goto_8

    :cond_13
    move v0, v4

    goto/16 :goto_7

    :cond_14
    move v2, v3

    goto :goto_8

    :cond_15
    move-object v6, p1

    goto/16 :goto_3

    :cond_16
    move v7, v3

    goto/16 :goto_2

    :cond_17
    move v2, v0

    move v0, v1

    goto/16 :goto_1
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid indexString :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v2, :cond_5

    :cond_0
    iget-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

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

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v0, :cond_0

    const-string v0, "\u2606"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    if-eq v0, p1, :cond_4

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move v2, v1

    :goto_3
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
